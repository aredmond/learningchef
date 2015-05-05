#
# Cookbook Name:: enterprise-chef
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package_url = node['enterprise-chef']['url']
package_name = ::File.basename(pachage_url)
package_local_path = "#{chef::Config[:file_cache_path]}/#
