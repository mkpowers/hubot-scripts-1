# Description:
#   Truths from Jean Ralphio
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot jean ralphio me
#
# Author:
#   mkpowers

module.exports = (robot) ->
  robot.hear /jean ralphio me/i, (msg) ->
    images = [
      "http://i.imgur.com/Z6Q8TUP.gif",
      "http://i.imgur.com/6o9MwZ4.gif",
      "http://i.imgur.com/0lRJEzH.gif",
      "http://i.imgur.com/KJPRBN9.gif",
      "http://i.imgur.com/45czgEk.gif",
      "http://i.imgur.com/UchTKf8.gif",
      "http://i.imgur.com/CE6NPps.gif",
      "http://i.imgur.com/nLXAMFD.gif",
      "http://i.imgur.com/IbzQ4vk.gif",
      "http://i.imgur.com/BXDG60u.gif",
      "http://i.imgur.com/FzC5Duq.gif",
      "http://i.imgur.com/lvKxaf6.gif",
      "http://i.imgur.com/6bRfJPJ.gif",
      "http://i.imgur.com/Xv01pz9.gif",
      "http://i.imgur.com/M9i1kuw.gif",
      "http://i.imgur.com/C0p1MKW.gif",
      "http://31.media.tumblr.com/tumblr_m2i5c3Jhrl1qzb9ygo1_500.png",
      "http://24.media.tumblr.com/tumblr_m2i5c3Jhrl1qzb9ygo2_500.png"]
    msg.send msg.random images
