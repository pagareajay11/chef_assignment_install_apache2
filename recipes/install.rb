#
# Cookbook:: assignment_install_apache2
# Recipe:: install
#
# Copyright:: 2022, The Authors, All Rights Reserved.

package_name = node['package_name']['apache2']
version  = node['apache2']['version']
apt_update 'update_repo' do
    action :update
  end

  package package_name do
    
    version version
  end