#
# Cookbook:: assignment_install_apache2
# Recipe:: config
#
# Copyright:: 2022, The Authors, All Rights Reserved.

package_name = node['package_name']['apache2']
actions = [ :enable,:start]
template '/var/www/html/index.html' do
    source 'index.html.erb'
    action :create
end

service package_name do
    action actions
  end
  
  



