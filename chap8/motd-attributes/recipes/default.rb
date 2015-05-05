#
# Cookbook Name:: motd-attributes
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

require 'pp'

node.default['ipaddress'] = '1.1.1.1'
pp node.debug_value('ipaddress')

node.default['motd-attributes']['company'] = 'Mandrew Inc.'
node.default['motd-attributes']['message'] = "It's a great day to be alive!"

pp node.debug_value('motd-attributes', 'company')
include_recipe 'motd-attributes::message'
pp node.debug_value('motd-attributes', 'company')

template '/etc/motd' do
    source 'motd.erb'
    mode '0644'
end
