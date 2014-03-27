# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot beer me - Grab me a beer
#
# Author:
#  houndbee

beers = [
  "http://icons.iconarchive.com/icons/jonathan-rey/simpsons/256/Homer-Simpson-03-Beer-icon.png",
  "http://beertext.us/images/beer-icon.png",
  "https://pbs.twimg.com/profile_images/378800000365304147/8f1b1961fbc279d634a5965366006dfe.jpeg",
  "http://img4.wikia.nocookie.net/__cb20130915031534/simpsons/images/f/f7/Duff_Beer.png",
  "http://www.contractcleaning.co.uk/wp-content/uploads/2013/12/beer-clothes.jpeg"
]

module.exports = (robot) ->
  robot.hear /.*(beer me).*/i, (msg) ->
    msg.send msg.random beers
