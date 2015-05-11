#
# Cookbook Name:: nodes
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

search("node", "*:*").each do |matching_node|
    log matching_node.to_s
end
