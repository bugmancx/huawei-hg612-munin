This is a collection of munin plugins for monitoring various details of the Huawei
HG612 device.  The HG612 is installed by OpenReach for certain types of DSL connections.
It is normally installed in a locked-down state but can be unlocked to provide
additional information and configuration -- just search "HG612 Hacking" and you
will find all of the information you need.

These scripts are provided for the free use of anyone who wishes to use them.
They were written by me for my own personal use, and as such may or may not need
to be modified to suit your purposes.

My code is not perfect but does the job for me, and may need to be modified for
you.  Improvements are welcome.

I've provided some instructions to add these into munin -- they will only show
up as a new graph section (hg612) for an existing host (if you require them to show up
as a separate host in munin, please reconfigure to suit.)

HOW TO USE:

1. This code was written to be run with Munin on a Linux host.  It requires an
unlocked HG612 and for the "expect" scripting language to be installed.

2. This script was configured to be run from /etc/munin/huawei and if you need
to use a different directory you may need to modify the scripts to suit.

3. To extract:
	cd /etc/munin
	tar zxvf huawei-hg612-munin-1.0.tgz

4. A cron job must be set up to run every 5 minutes and the user running the
plugin must be able to write to `/var/lib/munin/plugin-state/huawei-hg612-munin-output.txt`.

	cp /etc/munin/huawei/crontab /etc/cron.d/huawei-hg612-munin

5. If you wish to enable any of the plugins, create a symlink for each one in
the munin plugins directory.  Or, copy and paste the following:

	ln -s /etc/munin/huawei/plugins/hg612_* /etc/munin/plugins

6. The huawei.expect script is configured to connect to 192.168.1.1 and use 
the default username and password.  If this isn't what you want, simply modify
the expect script.

