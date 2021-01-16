#!/bin/bash

sample () {
  node scripts/node/tts.js "Hello, world!" "en-US" "n" "y"
}

synthesize () {
  echo -n "text: "
  read text

  echo -n "voice: "
  read voice

  echo -n "slow (y/N)? "
  read slow

  echo -n "useToken (y/N)? "
  read token

  node scripts/node/tts.js "$text" "$voice" "$slow" "$token"
}

# Begin Script

COMMAND=${1}

case "$COMMAND" in
  sample) sample;;
  synth) synthesize $@;;
esac
