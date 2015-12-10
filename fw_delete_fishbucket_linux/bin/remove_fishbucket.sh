if [ -f $SPLUNK_HOME/.fishbucket ]
then
	exit
fi
touch $SPLUNK_HOME/.fishbucket
/opt/splunk/bin/splunk stop
rm -fr $SPLUNK_HOME/var/lib/splunk/fishbucket/*
/opt/splunk/bin/splunk start
