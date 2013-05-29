# Description:
#   Create new cards in Trello
#
# Dependencies:
#   "node-trello": "latest"
#
# Configuration:
#   BIGBLUE_TRELLOIDEA_KEY - Trello application key
#   BIGBLUE_TRELLOIDEA_TOKEN - Trello API token
#   BIGBLUE_TRELLOIDEA_LIST - The list ID that you'd like to create cards for
#
# Commands:
#   bigblue trello idea card <name> - Create a new Trello card in BDD (Blueprint Driven Development Board)
#
# Notes:
#   To get your key, go to: https://trello.com/1/appKey/generate
#   To get your token, go to: https://trello.com/1/authorize?key=<<your key>>&name=Hubot+Trello&expiration=never&response_type=token&scope=read,write
#   Figure out what board you want to use, grab it's id from the url (https://trello.com/board/<<board name>>/<<board id>>)
#   To get your list ID, go to: https://trello.com/1/boards/<<board id>>/lists?key=<<your key>>&token=<<your token>>  "id" elements are the list ids.
#
# Author:
#   carmstrong

module.exports = (robot) ->
  robot.respond /trello idea (.*)/i, (msg) ->
    msg.send "working"
    cardName = msg.match[1]
    if not cardName.length
      msg.send "You must give the card a name"
      return
    if not process.env.BIGBLUE_TRELLOIDEA_KEY
      msg.send "Error: Trello app key is not specified"
    if not process.env.BIGBLUE_TRELLOIDEA_TOKEN
      msg.send "Error: Trello token is not specified"
    if not process.env.BIGBLUE_TRELLOIDEA_LIST
      msg.send "Error: Trello list ID is not specified"
    if not (process.env.BIGBLUE_TRELLOIDEA_KEY and process.env.BIGBLUE_TRELLOIDEA_TOKEN and process.env.BIGBLUE_TRELLOIDEA_LIST)
      return
    createCard msg, cardName

createCard = (msg, cardName) ->
  Trello = require("node-trello")
  t = new Trello(process.env.BIGBLUE_TRELLOIDEA_KEY, process.env.BIGBLUE_TRELLOIDEA_TOKEN)
  t.post "/1/cards", {name: cardName, idList: process.env.BIGBLUE_TRELLOIDEA_LIST}, (err, data) ->
    if err
      msg.send "There was an error creating the card"
      return
    msg.send data.url