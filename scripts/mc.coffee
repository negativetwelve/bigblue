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
  "Momma Chow, where are you? @bob",
  "@bob, it is BigBlue calling",
  "Momma Chow @bob, your children miss you: @noahg, @mattl, @harrisont, @jchan",
  "Momma Chow wants us to call her @bob"
]


module.exports = (robot) ->
  robot.hear /Michelle Chow|@bob|MC|mc|chow|michelle|m c/i, (msg) ->
    msg.send msg.random mc