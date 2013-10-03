require 'spec_helper'

describe "Facter::Util::Fact" do
  before {
    Facter.clear
    Facter.fact(:kernel).stubs(:value).returns("Linux")
    Facter.fact(:kernelrelease).stubs(:value).returns("2.6")
  }
  test_user = 'root'
  exp_dir = Etc.getpwnam('root').dir
  describe 'homedirs' do
    it "set home_#{test_user} to #{exp_dir}" do
      Facter.fact(:home_root).value.should == exp_dir
    end
  end
end
