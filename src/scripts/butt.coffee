# butt.coffee
#
# Description:
#   butt.
#
#   Set the environment variable HUBOT_BUTT_TRIGGER_FREQ to [1, +inf) to change
#   how frequently the buttscript responds. Lower numbers correspond to more
#   responses, e.g. a value of 6 corresponds to 1 in 6 messages responded.
#
#   Similarly, set the env var HUBOT_BUTT_REPLACE_FREQ to [1, +inf) to change
#   how many words are replaced in a given phrase selected for butting.
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_BUTT_TRIGGER_FREQ [1, +inf) - how often the buttbot script triggers, 1 = always
#   HUBOT_BUTT_REPLACE_FREQ [1, +inf) - how many words are butted, 1 = all words
#
# Commands:
#   "" - buttbot script technically triggers on every message
#
# Notes:
#   A port of buttbot, an IRC bot in perl: https://code.google.com/p/buttbot/
#
# Author:
#   devmage

# -------------------------------------------------------------------------------------------------
# configs and data

# defaults
DEFAULT_TRIGGER_FREQ_DENOM = 51 # buttbot default, one in 51 messages trigger the bot
DEFAULT_REPLACE_FREQ_DENOM = 11 # buttbot default, one in 11 unique words per statement replaced
MEME = "butt" # configurable I guess but[t] why would you ever want to change it...

# environment variables
triggerEnv = process.env.HUBOT_BUTT_TRIGGER_FREQ
replaceEnv = process.env.HUBOT_BUTT_REPLACE_FREQ

# utils
unless String::trim then String::trim = -> @replace /^\s+|\s+$/g, ""

Array::unique = ->
  output = {}
  output[@[key]] = @[key] for key in [0...@length]
  value for key, value of output

# -------------------------------------------------------------------------------------------------
# the main Hubot method

module.exports = (robot) ->

  # get env vars read into memory
  frequencyDenom = 0
  replaceDenom = 0
  
  if triggerEnv
    frequencyDenom = parseInt(triggerEnv)
  else
    frequencyDenom = DEFAULT_TRIGGER_FREQ_DENOM

  if replaceEnv
    replaceDenom = parseInt(replaceEnv)
  else
    replaceDenom = DEFAULT_REPLACE_FREQ_DENOM

  # match on all incoming strings
  robot.hear /(.+)/i, (msg) ->
    original = escape(msg.match[1]).trim()
    if (Math.floor(Math.random() * frequencyDenom) + 1) == 1 and (original.search(/[a-zA-Z]+/gi) ) > 0
      words = original.split(' ')
      uniques = words.unique()
  
    # how many butts?
      numToButt = Math.floor(size / replaceDenom) + 1

      # which will we butt?
      toButt = []
      while toButt.size() < numToButt
        nextButtIdx = Math.floor(Math.random * uniques.size())
        toButt = (toButt.concat uniques[nextButtIdx]).unique()

      # perform buttification
  
      # reform string
      words.join(' ')
  
      butted = words.replace word, MEME for word in toButt
      msg.send butted