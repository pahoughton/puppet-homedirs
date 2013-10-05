
## Puppet Homedirs Module

[![Test Build Status](https://travis-ci.org/pahoughton/puppet-homedirs.png?branch=devel)](https://travis-ci.org/pahoughton/puppet-homedirs)

Tiny puppet module that provides home_${user} directory facts according to /etc/password (i.e. home_root, home_postgresql

## Dependencies

None, but see .fixtures.yml for the most accurate list

## Use

Install the module. I recommend using .fixture.yml and [librarian-puppet](https://github.com/rodjek/librarian-puppet) and providing the GitHub url: https://github.com/pahoughton/puppet-homedirs

A new fact will be created for each user like $::home_postgresql which contains the user's home directory.

NOTE: this will not work for users you create.

   user { 'somebody' : 
     ensure      => present,
     managehome  => true,
   }
   # $::home_somebody is NOT set.

[![LICENSE](http://i.creativecommons.org/l/by/3.0/88x31.png)](http://creativecommons.org/licenses/by/3.0/)

