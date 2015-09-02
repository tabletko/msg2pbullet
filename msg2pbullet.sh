### Usage: msg2pbullet.sh API_KEY SUBJECT MESSAGE

#!/bin/bash
API_KEY="$1"
SUBJECT="$2"
MESSAGE="$3"

curl https://api.pushbullet.com/v2/pushes \
      -u "$API_KEY": \
      -d type=note \
      -d title="$SUBJECT" \
      -d body="$MESSAGE" \
      -X POST
