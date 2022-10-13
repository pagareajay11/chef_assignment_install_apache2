#
# Cookbook:: assignment_install_apache2
# Spec:: config
#
# Copyright:: 2022, The Authors, All Rights Reserved.

require 'chefspec'

describe 'assignment_install_apache2::config' do
  platform 'ubuntu'
  let(:node){ subject.node}
  let(:package_name){node['package_name']['apache2']}
  describe 'creates a template ' do
    it { is_expected.to create_template('/var/www/html/index.html') }
  end
  describe 'enables ,starts the service' do
   it { is_expected.to enable_service(package_name) }
 
  end
  describe 'start the service' do
    it { is_expected.to start_service(package_name) }
  end

end