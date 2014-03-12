module.exports = (robot) ->

  robot.hear /brain/i, (msg) ->
    room = msg.message.room
    from = msg.message.user.name
    console.log(@robot.brain.data)


