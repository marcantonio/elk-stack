#
# Cookbook Name:: elkstack
# Recipe:: kibana
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "java"
include_recipe "runit"
include_recipe "kibana_lwrp::install"
