#
# Cookbook Name:: enterprise-chef
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package_url = node['enterprise-chef']['url']
package_name = ::File.basename(package_url)
package_local_path = "#{Chef::Config[:file_cache_path]}#{package_name}"

#omnibus_package is remote (i.e., a URL) let's download it
remote_file package_local_path do
    source package_url
end

package package_name do
    source package_local_path
    provider Chef::Provider::Package::Rpm
    notifies :run, 'execute[chef-server-ctl reconfigure]', :immediately
end

# reconfigure the installation
execute 'chef-server-ctl reconfigure' do
    command  'chef-server-ctl install opscode-manage; chef-server-ctl reconfigure; opscode-manage-ctl reconfigure'
    action :nothing
end
