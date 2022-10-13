#
# Cookbook:: assignment_install_apache2
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

include_recipe 'assignment_install_apache2::install'
include_recipe 'assignment_install_apache2::config'