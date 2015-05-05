#
# Cookbook Name:: motd-attributes
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default['motd-attributes']['message'] = "It's a great day to be alive!"

template '/etc/motd' do
    source 'motd.erb'
    mode '0644'
end
