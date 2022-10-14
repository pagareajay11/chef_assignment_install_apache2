# Chef InSpec test for recipe assignment_install_apache2::install

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

describe package('apache2') do
  it { should be_installed }
  its('version') { should eq '2.4.41-4ubuntu3.12' }
end


