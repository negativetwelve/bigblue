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
  "@bob (Michelle Chow) I will end you",
  "@bob (Michelle Chow) watch your back before you get a knife in it",
  "@bob (Michelle Chow) I know where you live, I know where you sleep",
  "@bob (Michelle Chow) You're dead to me",
  "Sweet dreams @bob (Michelle Chow)... for it may be your last",
  "@bob (Michelle Chow) I will FINISH YOU, THEN EAT YOU THEN BARF YOU UP!",
  "I love you @bob (Michelle Chow)",
  "I WILL DESTROY YOU @bob (Michelle Chow). I WILL DESTROY YOU IN FRONT OF ALL OF THESE PEOPLE"
]


module.exports = (robot) ->
  robot.hear /jay|ryoo|jae/i, (msg) ->
    msg.send msg.random jay