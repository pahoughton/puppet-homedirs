require 'spec_helper'

describe "Facter::Util::Fact" do
  before {
    Facter.clear
    Facter.fact(:kernel).stubs(:value).returns("Linux")
    Facter.fact(:kernelrelease).stubs(:value).returns("2.6")
  }
  ['debian','Debian','Fedora','Darwin'].each do |os|
    case os
    when 'debian','Debian','Fedora'
      test_user = 'mail'
      exp_dir = '/var/spool/mail'
    when 'Darwin'
      test_user = '_postfix'
      exp_dir = '/var/spool/postfix'
    end
    context "operating system #{os}" do
      describe "home_#{test_user}" do
        it "set to #{exp_dir}" do
          Facter.fact(":home_#{test_user}").value.should == exp_dir
        end
      end      
    end
  end
end