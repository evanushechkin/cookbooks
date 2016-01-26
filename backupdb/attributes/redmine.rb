case platform
when 'debian','ubuntu','redhat','centos','fedora','freebsd','suse'
  default['redmine']['backup_dir']  = "/var"
  default['redmine']['redmine_scripts']  = "/opt"
  

else
  default['redmine']['backup_dir']  = "/var"
  default['redmine']['redmine_scripts']  = "/opt"
end
