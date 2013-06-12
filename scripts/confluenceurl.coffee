# Description:
#   sends URL to Blueprint confluence
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   bigblue confluence me

module.exports = (robot) ->
  robot.respond /confluence me/i, (msg) ->
    msg.send ["https://calblueprint.atlassian.net"]