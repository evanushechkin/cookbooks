#
# Cookbook Name:: backupdb
# Recipe:: redmine
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
    directory "#{node['redmine']['backup_dir']}/BACKUP" do
      owner "root"
      group "root"
      mode 00777
      recursive true
      action :create
    end

    directory "#{node['redmine']['backup_dir']}/BACKUP/redmine_back" do
      owner "root"
      group "root"
      mode 00777
      recursive true
      action :create
    end

    directory "#{node['redmine']['redmine_scripts']}/redmine_scripts" do
      owner "root"
      group "root"
      mode 00777
      recursive true
      action :create
    end

    template "#{node['redmine']['redmine_scripts']}/redmine_scripts/redmine_backup.sh" do
      source "backup.erb"
      mode "0644"
    end
