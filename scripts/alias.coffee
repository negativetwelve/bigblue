module.exports = (robot) ->

  eteam = (message) ->
    "@jaylin @sam @JSONDerulo @merrymelissaday @vivekbloop #{message}"

  pls = (message) ->
    "@pimplord @neezus @j @noah @vdawg @sam #{message}"

  chairs = (message) ->
    "@jessica @soo @tinabloop @yishanbloop @bae @bloopalli #{message}"

  bpasians = (message) ->
    "@all #{message}"

  bpgirls = (message) ->
    "@elizabeth @bloopalli @ilean @jodreen @jaylin @melissa @tfu @jenniferbloop @ericabloop @jessica @soo @tinabloop @yishanbloop @sameerabloop @NikitaRau #{message}"

  bpindians = (message) ->
    "@vdawg @neezus @deepsbloop @vivekbloop #{message}"

  bpsf = (message) ->
    "@1goon @vdawg @vivekbloop @jaylin @sam #{message}"

  ros = (message) ->
    "@sam @nahte @jodreen @ilean #{message}"

  ff = (message) ->
    "@tonybloop @vdawg @will @JSONDerulo @neezus @alton #{message}"

  odalc = (message) ->
    "@atsu @pimplord @vivekbloop @jdu @anthonyy #{message}"

  phc = (message) ->
    "@pimplord @alton @tonybloop @warren @ShimmyLi #{message}"

  ws = (message) ->
    "@neezus @jodreen @maxbloop @andrewbloop @chuckbobxd #{message}"

  bphouse = (message) ->
    "@mark @1goon @melissa @jdu @atsu #{message}"

  worldreader = (message) ->
    "@jdu @nahte @will @vdawg @nnarayen #{message}"

  revolv = (message) ->
    "@generic @noah @sameerabloop @ayk @AndyQin #{message}"

  foodshift = (message) ->
    "@j @bloopalli @atsu @NikitaRau @ericabloop #{message}"

  ea = (message) ->
    "@merrymelissaday @warren @tofu @elizabeth @chuckbobxd #{message}"

  blueops = (message) ->
    "@sam @shieh @quintontarantino @tofu @bae #{message}"

  bplol = (message) ->
    "@1goon @jaylin @j @jdu @kwu #{message}"

  # Commands to listen for
  robot.hear /@eteam (.*)$/i, (msg) ->
    msg.send eteam(msg.match[1])

  robot.hear /@pls (.*)$/i, (msg) ->
    msg.send pls(msg.match[1])

  robot.hear /@chairs (.*)$/i, (msg) ->
    msg.send chairs(msg.match[1])

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

  robot.hear /@JAMMM (.*)$/i, (msg) ->
    msg.send ws(msg.match[1])

  robot.hear /@bphouse (.*)$/i, (msg) ->
    msg.send bphouse(msg.match[1])

  robot.hear /@worldreader (.*)$/i, (msg) ->
    msg.send worldreader(msg.match[1])

  robot.hear /@foodshift (.*)$/i, (msg) ->
    msg.send foodshift(msg.match[1])

  robot.hear /@blueops (.*)$/i, (msg) ->
    msg.send blueops(msg.match[1])

  robot.hear /@JEEW (.*)$/i, (msg) ->
    msg.send worldreader(msg.match[1])

  robot.hear /@phc (.*)$/i, (msg) ->
    msg.send phc(msg.match[1])

  robot.hear /@projecthowardchen (.*)$/i, (msg) ->
    msg.send phc(msg.match[1])

  robot.hear /@revolv (.*)$/i, (msg) ->
    msg.send revolv(msg.match[1])

  robot.hear /@ea (.*)$/i, (msg) ->
    msg.send ea(msg.match[1])

  robot.hear /@bplol (.*)$/i, (msg) ->
    msg.send bplol(msg.match[1])
