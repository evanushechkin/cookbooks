#
# Cookbook Name:: backupdb
# Recipe:: backup_server
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

    directory "#{node[:backserver][:backup_dir]}/BACKUP" do
      owner "root"
      group "root"
      mode "0777"
      recursive true
      action :create
    end
    
