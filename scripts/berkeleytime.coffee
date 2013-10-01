# Description:
#   sends URL to Berkeley Time
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   bigblue what time is it

module.exports = (robot) ->
  robot.hear /what time is it/i, (msg) ->
    msg.send ["http"]