# Description
#   Have Hubot manage a game of global domination
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   izrik


start_state = (robot) ->
  #TODO: change 'hear' to 'respond'
  robot.hear /create\s*(a\s+)?(new\s+)?game(\s+with\s+(.*))?/, (res) ->
    res.send "Got create command"

  robot.hear /a(b)c/, (res) ->
    xyz = /x(y)z/.match()
    message = "unknown"
    if s = xyz "xyz"
      message = (typeof s).toString() + ": " + s.toString()
    res.send message

current_state = null

module.exports = (robot) ->
  state = current_state ? start_state
  next = state(robot)
  current_state = next ? state
