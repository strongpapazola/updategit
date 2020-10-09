#!/bin/bash

# Project Web dir
WEBDIR="/var/www/.bintang/systar.mon"

# Worker dir
WORKERDIR="/opt/systar.mon.app"

# UserSQL
USER="root"
PASSWD="toor"
DB="stresstest_db"

cp -rf $WORKERDIR $WEBDIR
mysqldump -u $USER -p$PASSWD $DB > $WEBDIR/$DB.sql
pushd $WEBDIR
git add .
git commit -m 'up'
git push
