# ![Aptible](http://aptible-media-assets-manual.s3.amazonaws.com/tiny-github-icon.png) Octotron

Our loyal Slack Hubot.

## Configuration

The following configuration variables are necessary to make the respective Hubot scripts work:

| Variable | Dependent scripts | Where to find |
| -------- | ----------------- | ------------- |
| `HUBOT_SLACK_TOKEN` | (All) | https://aptible.slack.com/apps/A0F7XDU93-hubot |
| `HUBOT_WOLFRAM_APPID` | hubot-wolfram | |
| `HUBOT_GOOGLE_CSE_ID` | hubot-google-images | https://cse.google.com/manage/all |
| `HUBOT_GOOGLE_CSE_KEY` | hubot-google-images | https://console.developers.google.com/apis/credentials?project=octotron-1469901960199 |
| `HUBOT_YOUTUBE_API_KEY` | hubot-youtube | https://console.developers.google.com/apis/credentials?project=octotron-1469901960199 |


## Running and Testing

To run in REPL mode locally, just:

    npm install
    bin/hubot

If you want to debug the Slack integration locally against the live Slack integration, first scale down the `octotron` app (to avoid conflicts), and then run with the Hubot adapter. You'll probably want to set all of the ENV variables above, too.

    aptible apps:scale slack 0 --app octotron
    bin/hubot -a slack

----

Copyright &copy; 2016 [Aptible](https://www.aptible.com)

[<img src="https://s.gravatar.com/avatar/a0ca2194d5135713a06d49bc4a358b14?s=60" style="border-radius: 50%;" alt="@chasballew" />](https://github.com/chasballew)
