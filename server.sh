#!/bin/sh

if [ -z "$PORT"]
then
  PORT=5005
fi

rasa x --no-prompt --enable-api --port $PORT --cors "*" --debug
