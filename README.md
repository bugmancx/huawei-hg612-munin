## HG612 plugins for Munin

This is a collection of munin plugins for monitoring various details of the Huawei HG612 device.  The HG612 is installed by OpenReach for certain types of DSL connections (mostly FTTC "Infinity" and LLU installations).

Most Openreach installations are in a locked-down state but can be unlocked to provide additional information and configuration -- just search "HG612 Hacking" and you will find all of the information you need.


### Installation

- Install ```netcat``` and ```expect```
- Download and unpack the repository into ```/etc/munin/huawei```
- Install the crontab, either manually in the ```munin``` user for your system, or ```cp crontab /etc/cron.d/huawei-hg612-munin```
- Symlink the required plugins into ```/etc/munin/plugins``` using ```ln -s /etc/munin/huawei/plugins/hg612_* /etc/munin/plugins/```
- Modify ```/etc/munin/huawei/getstats.sh``` for your modem's IP, username, and password.
- Add an host entry for ```hg612``` to your ```munin.conf``` file

### License

These files are distributed under the GPL v3, please see the included ```LICENSE``` file for further details. 

### Authors

- [bugmancx](https://github.com/bugmancx) - Original Author
- [Chris Williams](https://github.com/bingos)
- [Andrew Williams](https://github.com/nikdoof)
- [Chris Wilson](https://github.com/qris)