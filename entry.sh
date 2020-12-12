#!/bin/sh
set -e

export PATH="$PATH:/usr/local/bin/gatsby"

# Initialize Gatsby or run NPM install if needed
if [ ! -f "$GATSBY_DIR/package.json" ]
then
  echo "Initializing Gatsby..."
  gatsby new $GATSBY_DIR $GATSBY_THEME

else
  if [ ! -e "$GATSBY_DIR/node_modules/" ]
  then
    echo "Node modules is empty. Running npm install..."
    npm install

  fi

fi

# Decide what to do
if  [ "$1" == "develop" ]
then
  gatsby develop --host 0.0.0.0 --port $GATSBY_PORT
elif  [ "$1" == "build" ]
then
  rm -rf $GATSBY_DIR/public
  gatsby build

elif  [ "$1" == "stage" ]
then
  rm -rf $GATSBY_DIR/public
  gatsby build
  gatsby serve --host 0.0.0.0 --port $GATSBY_PORT

elif  [ "$1" == "develop-clean" ]
then
  rm -rf $GATSBY_DIR/public
  rm -rf $GATSBY_DIR/.cache
  gatsby develop --host 0.0.0.0 --port $GATSBY_PORT --verbose


else
  exec $@

fi



