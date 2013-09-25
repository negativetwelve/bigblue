module.exports = (robot) ->

  eteam = (message) ->
    "@kg @brian @mc @melissa @jonathank #{message}"

  pls = (message) ->
    "@stephaniek @wonjunj @mark #{message}"

  robot.respond /@eteam/i, (msg) ->
    msg.send eteam(msg.match[1])

  robot.respond /@pls/i, (msg) ->
    msg.send pls(msg.match[1])
