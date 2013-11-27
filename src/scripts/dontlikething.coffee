# Description:
#   Andy doesn't like things
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   andy doesn't like thing
#
# Author:
#   mkpowers

images = [
  "http://i.imgur.com/sVNGe3G.png",
  "http://i.imgur.com/yPgMH3M.jpg"
  ]

module.exports = (robot) ->
  robot.hear /andy doesn't like thing|don't like thing/i, (msg) ->
    msg.send msg.random images
