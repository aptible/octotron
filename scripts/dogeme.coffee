# Description:
#   Dogeme is most important. Ever.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot doge me - Conjure doge
#   hubot doge me Q - Conjure doge Q flavor
#   hubot doge dance - Keep funk alive
#   hubot doge move - Summon action doge
#
# Todo:
#   hubot doge bomb N - Coax N doges into a snafu

module.exports = (robot) ->
  robot.respond /(doge me)(.*)/i, (msg) ->
    dogeMe msg, msg.match[2], (url) ->
      msg.send url

  robot.respond /(doge dance)/i, (msg) ->
    msg.send 'http://img.pandawhale.com/post-26214-dancing-doge-gif-Shiba-Inu-gif-OtY1.gif'

  robot.respond /(doge move)(.*)/i, (msg) ->
    dogeMe msg, msg.match[2], true, (url) ->
      msg.send url

  # robot.respond /doge bomb( (\d+))?/i, (msg) ->
  #   count = msg.match[2] || 5
    # hit dogeMe (count) times

dogeMe = (msg, query, animated, cb) ->
  cb = animated if typeof animated == 'function'
  q = v: '1.0', rsz: '8', q: 'doge ' + query , safe: 'active'
  q.imgtype = 'animated' if typeof animated is 'boolean' and animated is true
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(q)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData?.results
      if images?.length > 0
        image  = msg.random images
        cb "#{image.unescapedUrl}#.png"
