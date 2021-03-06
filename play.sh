#!/bin/sh
BUFIFS=$IFS
IFS=

CURDIR=`dirname $0`
PLAY_DIR_HOME=${PLAY_DIR_HOME-$CURDIR}
PLAY_VERSION_FILE=.play_version
PLAY_VERSION=2.1.0

if [ -r $PLAY_VERSION_FILE ]; then
    read FL <$PLAY_VERSION_FILE
    PLAY_VERSION=$FL
fi

PATH_ORG=$PATH
PLAY_DIR=${PLAY_DIR_HOME}/play-${PLAY_VERSION}
if [ -e $PLAY_DIR ]; then
    export PATH=$PLAY_DIR:$PATH
    ${PLAY_DIR}/play $*
else
    echo "$PLAY_DIR not found"
    exit 1
fi

export PATH=$PATH_ORG

IFS=$BUFIFS
