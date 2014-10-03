module.exports = (robot) ->

  eteam = (message) ->
    "@1goon @samlau @tonybloop @alton @shuaigeswagga #{message}"

  pls = (message) ->
    "@JSONDerulo @bloopalli @kevinbloop @vdawg @melissa @vivekbloop #{message}"

  bpasians = (message) ->
    "@all #{message}"

  bpgirls = (message) ->
    "@elizabeth @bloopalli @ilean @jodreen @jaylin @melissa @tfu @jenniferbloop @ericabloop @jessica #{message}"

  bpindians = (message) ->
    "@vdawg @neezus @deepsbloop @vivekbloop #{message}"

  bpsf = (message) ->
    "@1goon @vdawg @vivekbloop @jaylin @samlau #{message}"

  usomc = (message) ->
    "@mark @bloopalli @jonathanho @JSONDerulo @kevinbloop @will #{message}"

  rtr4c = (message) ->
    "@kg @brianbloop @kevinbloop @hguan @eugenebloop #{message}"

  r161 = (message) ->
    "@mark @bloopalli @eugenebloop @hguan @melissa @neezus @altonbloop @mark @tonybloop #{message}"

  ros = (message) ->
    "@samlau @jonathanho @ethanbloop @bloopalli @deepsbloop @shuaigeswagga #{message}"

  ff = (message) ->
    "@tonybloop @vdawg @will @JSONDerulo @neezus @alton #{message}"

  odalc = (message) ->
    "@atsu @pimplord @vivekbloop @jdu @anthonyy #{message}"

  ws = (message) ->
    "@melissa @mark @jodreen @maxbloop @andrewbloop #{message}"

  worldreader = (message) ->
    "@jdu @ethanbloop @ilean @will @vdawg #{message}"

  # Commands to listen for
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

  robot.hear /@bpgirls (.*)$/i, (msg) ->
    msg.send bpgirls(msg.match[1])

  robot.hear /@bpindians (.*)$/i, (msg) ->
    msg.send bpindians(msg.match[1])

  robot.hear /@bpasians (.*)$/i, (msg) ->
    msg.send bpasians(msg.match[1])

  robot.hear /@ws (.*)$/i, (msg) ->
    msg.send ws(msg.match[1])

  robot.hear /@worldreader (.*)$/i, (msg) ->
    msg.send worldreader(msg.match[1])

  robot.hear /@JEEW (.*)$/i, (msg) ->
    msg.send worldreader(msg.match[1])

  robot.hear /@JAMMM (.*)$/i, (msg) ->
    msg.send ws(msg.match[1])

