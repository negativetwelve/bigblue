# Description:
#   Big Blue loves MC
#
# Dependencies:
#
#
# Configuration:
#
# Commands:
#   none
#
# Notes:
#   none
#
# Author:
#   jayyr

mc = [
  "MC > Jay"
]


module.exports = (robot) ->
  robot.hear /Michelle Chow|@bob|MC|mc|chow|michelle|m c/i, (msg) ->
    msg.send msg.random mc