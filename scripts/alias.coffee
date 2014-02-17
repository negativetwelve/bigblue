module.exports = (robot) ->

  eteam = (message) ->
    "@melissa @mark @1goon @jaylin @alice #{message}"

  pls = (message) ->
    "@samlau @kg @atsu @tonybloop #{message}"

  bpsf = (message) ->
    "@1goon @vdawg @vivekbloop @jaylin @samlau #{message}"

  usomc = (message) ->
    "@mark @bloopalli @jonathanho @2Chainz @kevinbloop @will #{message}"

  rtr4c = (message) ->
    "@kg @brianbloop @kevinbloop @howardbloop @eugenebloop #{message}"

  161 = (message) ->
    "@mark @bloopalli @eugenebloop @howardbloop @melissa @neezus @altonbloop @mark @tonybloop #{message}"

  robot.hear /@eteam (.*)$/i, (msg) ->
    msg.send eteam(msg.match[1])

  robot.hear /@pls (.*)$/i, (msg) ->
    msg.send pls(msg.match[1])

  robot.hear /@bpsf (.*)$/i, (msg) ->
    msg.send bpsf(msg.match[1])

  robot.hear /@usomc (.*)$/i, (msg) ->
    msg.send usomc(msg.match[1])
