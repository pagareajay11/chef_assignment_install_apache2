# Chef InSpec test for recipe assignment_install_apache2::config

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/


 describe service('apache2') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

 describe port(80) do
  it { should be_listening }
 # its('processes') {should include 'syslog'}
end