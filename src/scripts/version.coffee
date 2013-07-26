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
#   hubot version me <shortcode> - displays the submitted versions of a Follow Me app
#
# Author:
#   mkpowers

module.exports = (robot) ->
  robot.respond /version me (.*)/i, (msg) ->
    parseShowcode msg, msg.match[1]?.trim()

parseShowcode = (msg, showcode) ->
  url = if showcode? then "http://m.core-apps.com/#{showcode}/settings/json"
  msg
    .http(url)
      .get() (err, res, body) ->

        responseJson = JSON.parse(body)


        androidVersion = responseJson.current_android_version
        iphoneVersion = responseJson.current_iphone_version
        
        msg.send "iOS: #{iphoneVersion} | Android: #{androidVersion}"

