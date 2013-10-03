require 'spec_helper_system'

describe 'homedirs tests' do
  context 'provide home dir for root' do
    pp = <<-EOS.unindent
      if (not $::home_root) {
        fail('home_root fact not set')
      }
    EOS
    context puppet_apply(pp) do
      its(:stderr) { should be_empty }
      its(:exit_code) { should_not == 1 }
      its(:refresh) { should be_nil }
      its(:stderr) { should be_empty }
      its(:exit_code) { should be_zero }    
    end
  end
end