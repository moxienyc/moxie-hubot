# Description:
#   Retrives the URL of a support ticket, from freshdesk
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   support #12
#   ticket 12
#   freshdesk #12
#
#   The # it's optional, and can be used with : support, ticket or freshdesk
#
# Author:
#   Crisoforo Gaspar

# getSupportURL = ( options ) ->
#   basePath = 'https://github.com/moxienyc/'
#   invalidTicket = 'Invalid ticket number please verify'
#   if isFinite(ticketNumber)
#   then return ( basePath + ticketNumber )
#   else return invalidTicket

#   Util = require "util"

module.exports = (robot) ->
  robot.hear /gh/i, (msg) ->
    for own key, data of robot.brain
      msg.send key + " " + data
    for own key, data of robot.brain.data
      msg.send key + " " + data
