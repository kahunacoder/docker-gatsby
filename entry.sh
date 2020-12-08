#!/bin/sh
set -e

export GATSBY_DIR="/site"
export GATSBY_THEME="https://github.com/kahunacoder/gatsby-notion-starter.git"
export PATH="$PATH:/usr/local/bin/gatsby"

# Initialize Gatsby or run NPM install if needed
if [ ! -f "$GATSBY_DIR/package.json" ]
then
  echo "Initializing Gatsby..."
  gatsby new $GATSBY_DIR $GATSBY_THEME

else
  if [ ! -e "$GATSBY_DIR/node_modules/" ]
  then
    echo "Node modules is empty. Running yarn install..."
    yarn install

  fi

fi

# Decide what to do
if  [ "$1" == "develop" ]
then
  gatsby develop --host 0.0.0.0 --verbose
elif  [ "$1" == "build" ]
then
  rm -rf $GATSBY_DIR/public
  gatsby build

elif  [ "$1" == "stage" ]
then
  rm -rf $GATSBY_DIR/public
  gatsby build
  gatsby serve --port 8000

elif  [ "$1" == "develop-no-cache" ]
then
  rm -rf $GATSBY_DIR/public
  rm -rf $GATSBY_DIR/.cache
  gatsby develop --host 0.0.0.0 --verbose


else
  exec $@

fi



