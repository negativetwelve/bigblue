booty = [
  "I don't think you're ready for this jelly",
  "I don't think you're ready for this jelly",
  "I don't think you're ready for this jelly",
  "I don't think you're ready for this jelly",
  "I think you're ready for this jelly"
]


module.exports = (robot) ->
  robot.hear /am i ready/i, (msg) ->
    msg.send msg.random booty