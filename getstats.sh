#!/bin/sh

statsfile=${statsfile:-/var/lib/munin/plugin-state/huawei-hg612-munin-output.txt}

expect `dirname $0`/huawei.expect  | tee | tr -d "\015"  > $statsfile
