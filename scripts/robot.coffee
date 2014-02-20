module.exports = (robot) ->

  robot.hear /hi @bigblue (.*)$/i, (msg) ->
    from = msg.message.user.name.toLowerCase()
    msg.send "hi @#{from}"
