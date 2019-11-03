# CloudNS

This is the CloudNS project Git repo for YggdrasilSoft.

We do all development of the CloudNS appliance in the open.

## What is CloudNS?

CloudNS is a network services appliance built on top of Linux with Perl's Dancer2 web framework.

The backing store for much of the software relies on coreos/etcd.

## Installation

To install the application, run the following commands:

```sh
	perl Makefile.PL
	make
	make test
	make install
```

## Support & Documentation

After installing, you can find documentation for CloudNS with the
perldoc command.

```sh
    perldoc CloudNS
```

## License & Copyright

This software is Copyright (c) 2019, YggdrasilSoft, LLC.

This is free software, licensed under:

  The Apache License, Version 2.0, January 2004

