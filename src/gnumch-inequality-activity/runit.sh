#!/bin/sh
path=`dirname $0`

activity=gnumch-inequality

plugindir=$path
if [ -f $path/../boards/.libs/libpython.so ]
then
  plugindir=$path/../boards/.libs
fi

$path/gcompris.bin -L $plugindir -P $path./gnumch-equality-activity \
    -A $path/../gnumch-equality-activity/resources \
    --config-dir=. -M $path/activity \
    --locale_dir=$path/locale -l /math/algebramenu/gnumchmenu/$activity $*
