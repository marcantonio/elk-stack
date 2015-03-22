#
# Cookbook Name:: elkstack
# Recipe:: logstash
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "java"
include_recipe "runit"

instance = node['elkstack']['logstash']['instance_name']

logstash_instance instance do
  action :create
end

logstash_service instance do
  action :enable
end

templates = {
  "logstash.conf" => "logstash.conf.erb"
}

logstash_config instance do
  action :create
  templates_cookbook "elkstack"
  templates templates
  notifies :restart, "logstash_service[#{instance}]", :delayed
end

#template "/opt/logstash/lserver/etc/conf.d/logstash.conf" do
#  source "logstash.conf.erb"
#  owner "logstash"
#  group "logstash"
#  mode "0644"
#  notifies :restart, "service[kamailio]", :delayed
#end

include_recipe "rsyslog::client"
