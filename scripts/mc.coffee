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
  "Momma Chow, where are you? @MC",
  "@MC, it is BigBlue calling",
  "Momma Chow @MC, your children miss you: @noahg, @mattl, @harrisont, @jchan",
  "Momma Chow wants us to call her @MC"
]


module.exports = (robot) ->
  robot.hear /Michelle Chow|@MC|MC|mc|chow/i, (msg) ->
    msg.send msg.random mc