module.exports = (robot) ->

  robot.hear /(.*)$/i, (msg) ->
    console.log(msg)
    room = msg.message.room
    from = msg.message.user.name
    console.log(from)
    if from == "GitHub"
      console.log('github')


