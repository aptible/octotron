# ![Aptible](http://aptible-media-assets-manual.s3.amazonaws.com/tiny-github-icon.png) Octotron

Our loyal IRC bot.

## Running

For IRC integration, make sure to configure:

    HUBOT_IRC_SERVER=irc.freenode.net
    HUBOT_IRC_ROOMS=#aptible
    HUBOT_IRC_NICK=octotron
    HUBOT_IRC_UNFLOOD=true

For Slack integration, configure:

    HUBOT_SLACK_BOTNAME=slackbot
    HUBOT_SLACK_TOKEN=[redacted]
    HUBOT_SLACK_TEAM=aptible

Finally, for redis-brain functionality, you'll need to configure the `REDIS_URL` variable.

## Updates

Bump the version number in package.json and run `npm install`.

Copyright &copy; 2014 [Aptible](https://www.aptible.com)

[<img src="https://s.gravatar.com/avatar/a0ca2194d5135713a06d49bc4a358b14?s=60" style="border-radius: 50%;" alt="@chasballew" />](https://github.com/chasballew)
