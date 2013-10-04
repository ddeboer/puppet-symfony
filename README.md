puppet-symfony
==============

Introduction
------------

This [Puppet](https://puppetlabs.com/) module adds support for Symfony2 applications.

Installation
------------

Get the module:

```bash
$ git clone git://github.com/ddeboer/puppet-symfony.git modules/symfony
```

Usage
-----

Set up a virtual host on your webserver:

```puppet
symfony::webserver { 'myapp.dev':
  vhostDir  => '/vagrant',
  webserver => 'nginx'
}
```

Run any Symfony2 console command:

```puppet
symfony::console { 'cache:clear' }
```

License
-------

This module is released under the MIT License. See the bundled LICENSE file for
details.