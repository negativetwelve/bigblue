module.exports = (robot) ->

  eteam = (message) ->
    "@kg @brian @mc @melissa @jonathank #{message}"

  pls = (message) ->
    "@stephaniek @1goon @mark #{message}"

  bpsf = (message) ->
    "@1goon @vdawg @vivekbloop @jaylin @samlau #{message}"

  usomc = (message) ->
    "@mark @bloopalli @jonathanho @howardbloop @kevinbloop @will #{message}"

  robot.respond /@eteam (.*)$/i, (msg) ->
    msg.send eteam(msg.match[1])

  robot.respond /@pls (.*)$/i, (msg) ->
    msg.send pls(msg.match[1])

  robot.respond /@bpsf (.*)$/i, (msg) ->
    msg.send bpsf(msg.match[1])

  robot.respond /@usomc (.*)$/i, (msg) ->
    msg.send usomc(msg.match[1])
