# Description:
#   Happiness from Leslie Knope
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   leslie fucking knope - gives a random gif
#
# Author:
#   mkpowers

module.exports = (robot) ->
  robot.hear /leslie fucking knope/i, (msg) ->
    images = [
      "http://i.imgur.com/dOgP9eT.gif",
      "http://i.imgur.com/WWWt0Ws.gif",
      "http://i.imgur.com/lWQAH7K.gif",
      "http://i.imgur.com/6zz00up.gif",
      "http://i.imgur.com/9az5ANL.gif",
      "http://i.imgur.com/hAq1TFx.gif",
      "http://i.imgur.com/mxWa3N9.gif",
      "http://i.imgur.com/FodfDsV.gif",
      "http://i.imgur.com/RuR6C6R.gif",
      "http://i.imgur.com/2azVrTm.gif",
      "http://i.imgur.com/suRiCUd.gif",
      "http://i.imgur.com/rtknyH3.gif",
      "http://i.imgur.com/zRRZdel.gif",
      "http://i.imgur.com/uh9DkYE.gif",
      "http://i.imgur.com/93bmBaV.gif"]
    msg.send msg.random images
