module.exports = (robot) ->

  robot.hear /hi @bigblue (.*)$/i, (msg) ->
    from = msg.message.user.name
    msg.send "hi #{from}"
