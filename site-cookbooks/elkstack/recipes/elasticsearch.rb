#
# Cookbook Name:: elkstack
# Recipe:: elasticsearch
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "java"
include_recipe "elasticsearch"
include_recipe "elasticsearch::monit"
