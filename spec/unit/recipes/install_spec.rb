#
# Cookbook:: assignment_install_apache2
# Spec:: install
#
# Copyright:: 2022, The Authors, All Rights Reserved.

require 'chefspec'

describe 'assignment_install_apache2::install' do
  platform 'ubuntu'
  let(:node) {subject.node}
 # let(:package_name){ 'apache2'}
  let(:package_name){ node['package_name']['apache2']} #not working
  #worked after adding let(:node) {subject.node}
  let(:version){ node['apache2']['version']} #not working 
  #let(:version){ '2.4.41-4ubuntu3.12'}
  describe 'updates a repo' do
    it { is_expected.to update_apt_update('update_repo') }
  end

  describe 'installs a apache2' do
    it { is_expected.to install_package(package_name).with(version: version)  }
  
  end
  
end



