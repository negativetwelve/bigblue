module.exports = (robot) ->

  robot.hear /brain/i, (msg) ->
    room = msg.message.room
    from = msg.message.user.name
    console.log(@robot.brain.data)

  robot.hear /find (.*)/i, (msg) ->
    name = msg.match[1].trim()
    user = @robot.brain.userForName(name)
    console.log(@robot.brain.data.users[user.id])
