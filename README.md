
## Puppet Homedirs Module

[![Test Build Status](https://travis-ci.org/pahoughton/puppet-homedirs.png?branch=devel)](https://travis-ci.org/pahoughton/puppet-homedirs)

Tiny puppet module that provides home_${user} directory facts according to /etc/password (i.e. home_root, home_postgresql

## Dependencies

None, but see .fixtures.yml for the most accurate list

## Use - DO NOT!

Only test have been created so far.

Install the module. I recommend using .fixture.yml and [librarian-puppet](https://github.com/rodjek/librarian-puppet) and providing the GitHub url: https://github.com/pahoughton/puppet-homedirs

A new fact will be created for each user like $::home_postgresql which contains the user's home directory.

NOTE: this will not work for users you create.

   user { 'somebody' : 
     ensure      => present,
     managehome  => true,
   }
   # $::home_somebody is NOT set.
   
## License

Public domain, do as you wish with this. I would be nice to be included in the credits :). In keeping with that, I just made a module and wrote the test. I copied the actual functionallity from [jfried](http://serverfault.com/users/88598/jfried's) answer to a [ServerFault](http://serverfault.com/questions/420749) question.

