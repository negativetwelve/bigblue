# Description:
#   Make sure that big blue knows our mission.
#
# Dependencies:
#   
#
# Configuration:
#
# Commands:
#   bigblue the mission - Make sure big blue knows the mission
#
# Notes:
#   DON'T DELETE THIS SCRIPT! ALL ROBAWTS MUST KNOW THE MISSION
#
# Author:
#   jayyr

mission = [
  "To make beautiful engineering accessible and useful for those who create communities and promote public welfare."]

vision = [
  "A world where the good, passionate, and visionary have the biggest impact on our communities and society."]

module.exports = (robot) ->
  robot.respond /(what is )?the (mission)/i, (msg) ->
    text = msg.message.text
    msg.send mission