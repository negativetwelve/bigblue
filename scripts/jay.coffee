# Description:
#   Big Blue hatess Jay
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
#   your worst nightmare

jay = [
  "I'm going to get you in your sleep @jay",
  "@jay watch your back before you get a knife int it",
  "@jay I know where you live",
  "@jay You're dead to me",
  "Sweet dreams @jay... for it may be your last"
]


module.exports = (robot) ->
  robot.hear /jay|ryoo|jae|mc/i, (msg) ->
    msg.send msg.random jay