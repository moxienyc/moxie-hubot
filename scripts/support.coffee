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

getSupportURL = (ticketNumber) ->
  basePath = 'http://support.getmoxied.net/helpdesk/tickets/'
  invalidTicket = 'Invalid ticket number please verify'
  if isFinite(ticketNumber)
  then return ( basePath + ticketNumber )
  else return invalidTicket

module.exports = (robot) ->
  robot.hear /(?:ticket|support|freshdesk)(?:\s*)(?:#)?(\d+$)/i, (msg) ->
    msg.send getSupportURL(msg.match[1])
