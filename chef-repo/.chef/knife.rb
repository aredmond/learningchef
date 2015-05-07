# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "aredmond"
client_key               "#{current_dir}/aredmond.pem"
validation_client_name   "bytenights-validator"
validation_key           "#{current_dir}/bytenights-validator.pem"
chef_server_url          "https://default-centos65/organizations/bytenights"
cookbook_path            ["#{current_dir}/../cookbooks"]
