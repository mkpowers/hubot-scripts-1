# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot a reddit <subreddit> - A random top (today) post from the specified subreddit. Tries to find a picture if possible
#
# Author:
#   artfuldodger

String::endsWith = (suffix) -> return this.slice(-suffix.length) == suffix

module.exports = (robot) ->
  robot.respond /a reddit( .+)*/i, (msg) ->
    reddit msg, msg.match[1]?.trim()

reddit = (msg, subreddit) ->
  url = if subreddit? then "http://www.reddit.com/r/#{subreddit}.json?t=all&limit=100" else "http://www.reddit.com/top.json?t=year"
  msg
    .http(url)
      .get() (err, res, body) ->
        
        # Sometimes when a subreddit doesn't exist, it wants to redirect you to the search page.
        # Oh, and it doesn't send back 302s as JSON
        if body?.match(/^302/)?[0] == '302'
          msg.send "That subreddit does not seem to exist."
          return

        posts = JSON.parse(body)

        # If the response has an error attribute, let's get out of here.
        if posts.error?
          msg.send "That doesn't seem to be a valid subreddit. [http response #{posts.error}]"
          return

        unless posts.data?.children? && posts.data.children.length > 0
          msg.send "While that subreddit exists, there does not seem to be anything there."
          return

        post = getPost(posts)

        tries_to_find_picture = 0

        while (post?.url.endsWith(".png") != true or post?.url.endsWith(".jpg") != true or post?.url.endsWith(".gif") != true) && tries_to_find_picture < 50
          post = getPost(posts)
          tries_to_find_picture++
        
        # Send pictures with the url on one line so Campfire displays it as an image
        if post?.url.endsWith(".png") or post?.url.endsWith(".jpg") or post?.url.endsWith(".gif")
          msg.send "#{post.title} - http://www.reddit.com#{post.permalink}"
          msg.send post.url
        else
          msg.send "#{post.title} - #{post.url}"

getPost = (posts) ->
  max = posts.data.children.length
  min = 0
  post = posts.data.children[Math.floor(Math.random() * (max - min + 1)) + min]
  if post?.over_18 or post?.ups < post?.downs
  	getPost(posts, msg)
  else
  	post?.data
