module.exports = (robot) ->
  robot.respond /confluence ( me)? (.*)/i, (msg) ->
    msg.send "https://calblueprint.atlassian.net"