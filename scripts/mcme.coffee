# Description:
#   MCme is the least important thing in your life
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   bigblue mc me - Receive a grotesque human being, err I mean a MC.

module.exports = (robot) ->

  robot.respond /mc me/i, (msg) ->
    msg.http("http://mcme.herokuapp.com/random")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).mc

