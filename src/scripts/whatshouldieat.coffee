# Description:
#   Generates the name of a dish like MasterChef. Gordon Ramsay thinks everything is fantastic
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Hubot, what should I eat
#
# Author:
#   mkpowers
  
adjectives = [
  "stunning",
  "excellent",
  "perfect",
  "beautiful",
  "amazing",
  "outstanding"
  ]
  
foods = [
  "filet mignon",
  "chicken breast",
  "chicken leg",
  "chicken thigh",
  "offal",
  "lobster",
  "king crab",
  "ice cream",
  "ground beef",
  "New York steak",
  "cheesecake",
  "soufflé",
  "chocolate lava cake",
  "cupcakes"
  ]
  
crap = [
  "with a balsamic reduction",
  "with a teriyaki glaze",
  "with a seasoned rice cake",
  "with an amazing crab cake",
  "served over a bed of rice",
  "with a drizzle of olive oil",
  "with the blood of your enemies",
  ]


module.exports = (robot) ->
  robot.respond /what should I eat/i, (msg) ->
    sentence = "You should eat some #{msg.random adjectives} #{msg.random foods} #{msg.random crap}"
    msg.send sentence
