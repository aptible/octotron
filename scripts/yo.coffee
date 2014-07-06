# Descripton:
#   It really is that dumb
#
# Commands:
#   yo

module.exports = (robot) ->
  robot.respond /yo$/i, (msg) ->
    msg.send "yo"
