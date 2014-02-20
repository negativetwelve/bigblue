# Description:
#   Keeps track of how many messages users post within a room.
#
# Dependencies:
#   "underscore": ">= 1.0.0"
#   "clark": "0.0.6"
#
# Configuration:
#
# Commands:
#   hubot stats top|bottom
#
# Author:
#   Mark Miyashita (negativetwelve)

_ = require("underscore")
clark = require("clark").clark

class Counter
  constructor: (@robot) ->
    @cache =
      # room -> { user -> score }
      scores: {}

    @robot.brain.on 'loaded', =>
      @robot.brain.data.scores ||= {}
      @cache.scores = @robot.brain.data.scores

  getUser: (room, user) ->
    roomCache = @cache.scores[room] ||= {}
    roomCache[user] ||= 0
    user

  add: (room, user) ->
    roomCache = @cache.scores[room] ||= {}
    user = @getUser(room, user)
    roomCache[user]++

  top: (amount, room) ->
    tops = []
    roomCache = @cache.scores[room]

    for name, score of roomCache
      tops.push(name: name, score: score)

    tops.sort((a,b) -> b.score - a.score).slice(0,amount)


module.exports = (robot) ->
  counter = new Counter(robot)

  robot.hear /(.*)$/i, (msg) ->
    room = msg.message.room
    from = msg.message.user.name
    counter.add(room, from)

  robot.respond /stats (top|bottom) (\d+)/i, (msg) ->
    amount = parseInt(msg.match[2])
    message = []
    room = msg.message.room

    tops = counter[msg.match[1]](amount, room)

    for i in [0..tops.length-1]
      message.push("#{i+1}. #{tops[i].name} : #{tops[i].score}")

    msg.send message.join("\n")
