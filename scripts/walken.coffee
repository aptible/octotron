# Description:
#   Everyone needs some Walken
# Commands:
#  Just mention his name

walken = [
  "http://i.imgur.com/ymxzCfK.gif",
  "http://media.giphy.com/media/mn58Nf85G4j5u/giphy.gif",
  "http://media.giphy.com/media/qH7ov7Xk3TO8g/giphy.gif",
  "http://media.giphy.com/media/NkVD6NiMT5HW/giphy.gif",
  "http://media.giphy.com/media/jol76ZeEzm8i4/giphy.gif"
]

module.exports = (robot) ->
  robot.hear /.*(walken).*/i, (msg) ->
    msg.send msg.random walken
