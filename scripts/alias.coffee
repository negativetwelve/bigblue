module.exports = (robot) ->

  eteam = (message) ->
    "@kg @brian @mc @melissa @jonathank #{message}"

  pls = (message) ->
    "@stephaniek @wonjunj @mark #{message}"

  robot.respond /@eteam, (msg) ->
    msg.send eteam(msg.match[1])

  robot.respond /@pls, (msg) ->
    msg.send pls(msg.match[1])
