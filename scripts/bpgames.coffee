# Description:
#   The tracking system for the BP Games
#
# Commands:
#   bigblue what are the BP Games - The rules?
#   bigblue who is the Game Master - Me.
#
# Notes:
#   TODO: Point tracking system with limited access (only Game Master)

rules = [
  "1. The Games are played between all project teams (including Blue Ops and Chairs).",
  "2. Each team must have a unique banner.",
  "3. Each team must have a unique chant.",
  "4. The team with the most points at the end of the semester wins.",
  "5. Anything can become a point challenge.",
  "6. Every two weeks, there is a main point challenge called THE EQUALIZER.",
  "7. No one can assign points except for the Game Master.",
  "8. There are no rules.",
  "9. Just kidding. There are. These are the rules.",
  "10. Have fun."
  ]

gamemaster = ["@merrymelissday"]

module.exports = (robot) ->
  robot.respond /(.*) BP Games$/i, (msg) ->
    text = msg.message.text
    msg.send rules.join('\n')

module.exports = (robot) ->
  robot.respond /(.*) Game Master$/i, (msg) ->
    text = msg.message.text
    msg.send gamemaster.join('\n')