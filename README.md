## HG612 plugins for Munin

This is a collection of munin plugins for monitoring various details of the Huawei HG612 device.  The HG612 is installed by OpenReach for certain types of DSL connections (mostly FTTC "Infinity" and LLU installations).

Most Openreach installations are in a locked-down state but can be unlocked to provide additional information and configuration -- just search "HG612 Hacking" and you will find all of the information you need.


### Installation

- Install ```netcat``` and ```expect```
- Download and unpack the repository into ```/etc/munin/huawei-hg612-munin/```
- Install the crontab, either manually in the ```munin``` user for your system, or ```cp crontab /etc/cron.d/huawei-hg612-munin```
- Symlink the required plugins into ```/etc/munin/plugins``` using ```ln -s /etc/munin/huawei-hg612-munin/plugins/hg612_* /etc/munin/plugins/```
- Set  your modem's IP by renaming ```config.sample``` as ```config```, then editi it.
- Add an host entry for ```hg612``` in your ```munin.conf``` file, ie:  

    ```
    [hg612]
    	address	127.0.0.1
    ```
     _(replace 127.0.0.1 with the ip address of the munin-node hosting this hg612 plugins)_
- Restart your munin-node , ie: ```/etc/init.d/munin-node restart```


### License

These files are distributed under the GPL v3, please see the included ```LICENSE``` file for further details. 


### Authors

- [bugmancx](https://github.com/bugmancx) - Original Author
- [Chris Williams](https://github.com/bingos)
- [Andrew Williams](https://github.com/nikdoof)
- [Chris Wilson](https://github.com/qris)
- [Soif](https://github.com/soif)