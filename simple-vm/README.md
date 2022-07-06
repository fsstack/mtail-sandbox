# Simple Vagrant Example

This is a pretty simple example of how to use mtail using Vagrant.
This assumes you already have Vagrant installed and configured on your host.

## Directories/Files

```bash
.
├── etc
│   ├── default
│   │   └── mtail
│   └── mtail
│       └── kamailio.mtail
├── usr
│   └── local
│       └── bin
│           └── make-some-noise.sh
└── Vagrantfile
```

* `/etc/default/mtail` - Configuration file for the mtail service.
Make sure the following values are set:
    * `ENABLED=1` Enables the mtail service
    * `LOGS=/path/to/log/files` List of files mtail will monitor

* `/etc/mtail/kamailio.mtail` - Mtail program for parsing kamailio logs.

* `/usr/local/bin/make-some-noise.sh` - Script to generate kamailio log messages.


## Demo
```bash
vagrant up
vagrant ssh
/usr/local/bin/make-some-noise.sh
```
View metrics [here](http://localhost:3903/metrics)
