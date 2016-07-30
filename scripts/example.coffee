# Description:
#   An example Hubot script on which to base other custom scripts
#
# Commands:
#   hubot what is aptible? - Answers this static question

module.exports = (robot) ->
  robot.respond /what is aptible/i, (msg) ->
    msg.send "Aptible is a secure, compliant cloud platform for digital health"
