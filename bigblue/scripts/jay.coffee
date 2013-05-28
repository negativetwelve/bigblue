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

jay = [
  "Fuck you @jay",
  "@jay, sweet dreams",
  "You're dead @jay",
  "I'm going to get you @jay"
]


module.exports = (robot) ->
  robot.hear /Jay|Jae|@jay|ryoo|jr/i, (msg) ->
    msg.send msg.random jay