# Description:
#   SAY WHAT AGAIN
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   wat (when one person in particular says it)
#
# Author:
#   mkpowers

module.exports = (robot) ->
  robot.hear /wat$|what$|wut$/i, (msg) ->
    console.log msg
    if msg.user.user_id == '5458784'
      msg.send 'http://i.imgur.com/oOIoOkY.jpg'

