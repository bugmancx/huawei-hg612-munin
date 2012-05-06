#!/bin/sh
expect /etc/munin/huawei/huawei.expect  | tee | tr -d "\015"  > /etc/munin/huawei/output.txt
