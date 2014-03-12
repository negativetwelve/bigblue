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
      counts: {}

    @robot.brain.on 'loaded', =>
      @robot.brain.data.counts ||= {}
      @cache.counts = @robot.brain.data.counts
      @cache.counts["global"] ||= {}

  getUser: (room, user) ->
    @cache.counts["global"] ||= {}
    @cache.counts["global"][user] ||= 0
    roomCache = @cache.counts[room] ||= {}
    roomCache[user] ||= 0
    user

  add: (room, user) ->
    roomCache = @cache.counts[room] ||= {}
    user = @getUser(room, user)
    roomCache[user]++
    @cache.counts["global"][user]++

  top: (amount, room) ->
    tops = []
    roomCache = @cache.counts[room]

    for name, score of roomCache
      tops.push(name: name, score: score)

    tops.sort((a,b) -> b.score - a.score).slice(0,amount)


module.exports = (robot) ->
  counter = new Counter(robot)

  robot.hear /(.*)$/i, (msg) ->
    room = msg.message.room
    from = msg.message.user.name
    console.log(from)
    counter.add(room, from)

  robot.respond /stats (top|bottom) (\d+)/i, (msg) ->
    amount = parseInt(msg.match[2])
    message = []
    room = msg.message.room

    tops = counter[msg.match[1]](amount, room)

    for i in [0..tops.length-1]
      message.push("#{i+1}. #{tops[i].name} : #{tops[i].score}")

    msg.send message.join("\n")

  robot.respond /global stats (top|bottom) (\d+)/i, (msg) ->
    amount = parseInt(msg.match[2])
    message = []
    tops = counter[msg.match[1]](amount, "global")

    for i in [0..tops.length - 1]
      message.push("#{i+1}. #{tops[i].name} : #{tops[i].score}")

    msg.send message.join("\n")
