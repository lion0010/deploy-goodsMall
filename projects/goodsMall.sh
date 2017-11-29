#!/bin/bash
 
WEB_PATH='/home/wwwroot/default/goodsMall/'
WEB_PATH_CLIENT='/home/wwwroot/default/goodsMall/client'
WEB_USER='root'
WEB_USERGROUP='root'
# we can do 
echo "Start deployment www.lao7.site"
cd $WEB_PATH
echo "pulling source code..."
# git reset --hard origin/release
# git clean -f
git pull
git checkout master
echo "changing permissions..."
cd $WEB_PATH_CLIENT
npm run build
chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH_CLIENT
echo "Finished."
