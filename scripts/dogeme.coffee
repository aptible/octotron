# Description:
#   Dogeme is the most important thing. Ever.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   doge me - Conjure doge
#   hubot doge bomb N - coax N doges into a snafu

module.exports = (robot) ->
  robot.respond /(doge)( me)? (.*)/i, (msg) ->
    dogeMe msg, msg.match[3], (url) ->
      msg.send url

  # robot.respond /(gif)( me)? (.*)/i, (msg) ->
  #   dogeMe msg, msg.match[3], true, (url) ->
  #     msg.send url

  # robot.respond /doge bomb( (\d+))?/i, (msg) ->
  #   count = msg.match[2] || 5
    # hit dogeMe (count) times

dogeMe = (msg, animated, cb) ->
  cb = animated if typeof animated == 'function'
  q = v: '1.0', rsz: '8', q: 'doge', safe: 'active'
  q.imgtype = 'animated' if typeof animated is 'boolean' and animated is true
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(q)
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData?.results
      if images?.length > 0
        image  = msg.random images
        cb "#{image.unescapedUrl}#.png"
