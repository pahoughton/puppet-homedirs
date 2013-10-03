# provideds home_${user} facts
# directy copy from (jfried answser):
# http://serverfault.com/questions/420749
# I just made the module and wrote the tests.
require 'etc'
require 'facter'
Etc.passwd { |user|

   Facter.add("home_#{user.name}") do
      setcode do
         user.dir
      end
   end

}
