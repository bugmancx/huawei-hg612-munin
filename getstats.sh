#!/bin/sh

SCRIPTDIR=`dirname $0`
CONFIG=$SCRIPTDIR/config
[ -f $CONFIG ] &&  . $CONFIG

statsfile=${statsfile:-/var/lib/munin/plugin-state/huawei-hg612-munin-output.txt}
modem_ip=${modem_ip:-"192.168.1.1"}

expect `dirname $0`/huawei.expect $modem_ip  | tee | tr -d "\015"  > $statsfile
