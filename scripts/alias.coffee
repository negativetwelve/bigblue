module.exports = (robot) ->

  eteam = (message) ->
    "@kg @brian @mc @melissa @jonathank #{message}"

  pls = (message) ->
    "@stephaniek @wonjunj @mark #{message}"

  bpsf = (message) ->
    "@varunbloop @vivekbloop @jaylin @samlau #{message}"

  usomc = (message) ->
    "@allibloop @jonathanho @howardbloop @kevinbloop @will #{message}"

  robot.respond /@eteam (.*)$/i, (msg) ->
    msg.send eteam(msg.match[1])

  robot.respond /@pls (.*)$/i, (msg) ->
    msg.send pls(msg.match[1])

  robot.respond /@bpsf (.*)$/i, (msg) ->
    msg.send bpsf(msg.match[1])

  robot.respond /@usomc (.*)$/i, (msg) ->
    msg.send usomc(msg.match[1])
