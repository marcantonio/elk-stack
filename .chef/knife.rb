log_level                :info
log_location             STDOUT
node_name                'admin'
client_key               '/Users/mas/ddg-chef/elk-stack/.chef/admin.pem'
validation_client_name   'chef-validator'
validation_key           '/Users/mas/ddg-chef/elk-stack/.chef/chef-validator.pem'
chef_server_url          'https://ddg-cs.local'
syntax_check_cache_path  '/Users/mas/ddg-chef/elk-stack/.chef/syntax_check_cache'
cookbook_path            [ './cookbooks', './site-cookbooks' ]
