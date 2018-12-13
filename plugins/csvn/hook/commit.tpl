#!/bin/bash


REPOS="$1"
REV="$2"
TXN_NAME="$3"


WEB_PATH={$PROJECT_DIR}/wwwroot/$REPOS_NAME
SVN_PATH=http://127.0.0.1:{$PORT}/svn/$REPOS

if [ ! -d  $WEB_PATH ]; then
	svn co $SVN_PATH $WEB_PATH --username={$CSVN_USER} --password={$CSVN_PWD}
fi

cd $WEB_PATH && svn update --username={$CSVN_USER} --password={$CSVN_PWD}