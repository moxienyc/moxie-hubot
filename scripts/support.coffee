# Description:
#   Retrives the URL of a support ticket, from freshdesk
#
#   can be used like:
#   hubbot support #12
#   hubbot ticket 12
#   hubbot freshdesk #12
#
#   The # it's optional, and can be used support, ticket or freshdesk after
#   the hubbot.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   applause|applaud|bravo|slow clap - Get applause
#   sarcastic applause|clap - Get sarcastic applause
#
# Author:
#   Crisoforo Gaspar

getSupportURL = (ticketNumber) ->
  basePath = 'http://support.getmoxied.net/helpdesk/tickets/'
  invalidTicket = 'Invalid ticket number please verify'
  if isFinite(ticketNumber)
  then return ( basePath + ticketNumber )
  else return invalidTicket

module.exports = (robot) ->
  robot.hear /(?:ticket|support|freshdesk)(?:\s*)(?:#)?(\d+$)/i, (msg) ->
    msg.send getSupportURL(msg.match[1])
