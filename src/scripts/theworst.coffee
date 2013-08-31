# Description:
#  	Jean Ralphio sings the worst
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   the worst - displays a gif
#
# Author:
#   mkpowers

module.exports = (robot) ->
  robot.hear /the woo+rst/i, (msg) ->
    msg.send "http://i.imgur.com/JZMPU2o.gif"
