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
  "@jay I will end you",
  "@jay watch your back before you get a knife in it",
  "@jay I know where you live, I know where you sleep",
  "@jay You're dead to me",
  "Sweet dreams @jay... for it may be your last",
  "@jay I will FINISH YOU, THEN EAT YOU THEN BARF YOU UP!",
  "I love you @jay",
  "I WILL DESTROY YOU @jay. I WILL DESTROY YOU IN FRONT OF ALL OF THESE PEOPLE"
]


module.exports = (robot) ->
  robot.hear /jay|ryoo|jae|mc/i, (msg) ->
    msg.send msg.random jay