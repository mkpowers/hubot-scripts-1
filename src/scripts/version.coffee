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

module.exports = (robot) ->
  robot.respond /version me ( .+)$/i, (msg) ->
    parseShowcode msg, msg.match[1]?.trim()

parseShowcode = (msg, showcode) ->
  url = if showcode? then "http://m.core-apps.com/#{showcode}/settings/json"
  msg
    .http(url)
      .get() (err, res, body) ->

        responseJson = JSON.parse(body)


        androidVersion = responseJson.current_android_version
        iphoneVersion = responseJson.currrent_iphone_version
        
        msg.send "iOS: #{iphoneVersion} | Android: #{androidVersion}"

