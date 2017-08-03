#!/bin/sh

# Copyright 2016 dodat
#---------------------------------------------------------------------------*
# エラーログ参照
#---------------------------------------------------------------------------*/

logf="/var/log/httpd/ssl_movie.actiontc.jp-error_log"

if [ $# -eq 1 ]; then
	logf = "$1"
fi

tail -f $logf | perl -nle 's/\\x(..)/pack("C",hex($1))/eg;print $_'

