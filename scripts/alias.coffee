module.exports = (robot) ->

  eteam = (message) ->
    "@melissa @mark @1goon @jaylin @alice #{message}"

  pls = (message) ->
    "@samlau @kg @atsu @tonybloop #{message}"

  bpsf = (message) ->
    "@1goon @vdawg @vivekbloop @jaylin @samlau #{message}"

  usomc = (message) ->
    "@mark @bloopalli @jonathanho @AsapHowie @kevinbloop @will #{message}"

  rtr4c = (message) ->
    "@kg @brianbloop @kevinbloop @hguan @eugenebloop #{message}"

  r161 = (message) ->
    "@mark @bloopalli @eugenebloop @hguan @melissa @neezus @altonbloop @mark @tonybloop #{message}"

  ros = (message) ->
    "@samlau @jonathanho @ethanbloop @bloopalli @deepsbloop @shuaigeswagga #{message}"

  ff = (message) ->
    "@tonybloop @vdawg @will @AsapHowie @neezus @alton #{message}"

  odalc = (message) ->
    "@atsu @pimplord @vivekbloop @jdu @anthonyy #{message}"

  robot.hear /@eteam (.*)$/i, (msg) ->
    msg.send eteam(msg.match[1])

  robot.hear /@pls (.*)$/i, (msg) ->
    msg.send pls(msg.match[1])

  robot.hear /@bpsf (.*)$/i, (msg) ->
    msg.send bpsf(msg.match[1])

  robot.hear /@usomc (.*)$/i, (msg) ->
    msg.send usomc(msg.match[1])

  robot.hear /@rtr4c (.*)$/i, (msg) ->
    msg.send rtr4c(msg.match[1])

  robot.hear /@r161 (.*)$/i, (msg) ->
    msg.send r161(msg.match[1])

  robot.hear /@ros (.*)$/i, (msg) ->
    msg.send ros(msg.match[1])

  robot.hear /@ff (.*)$/i, (msg) ->
    msg.send ff(msg.match[1])

  robot.hear /@odalc (.*)$/i, (msg) ->
    msg.send odalc(msg.match[1])
