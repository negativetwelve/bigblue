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
  "Momma Chow, where are you?",
  ", it is BigBlue calling",
  "Momma Chow wants us to call her"
]


module.exports = (robot) ->
  robot.hear /Michelle Chow|@bob|MC|mc|chow|michelle|m c/i, (msg) ->
    msg.send msg.random mc