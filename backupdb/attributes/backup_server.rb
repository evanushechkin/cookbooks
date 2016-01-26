case platform
when 'debian','ubuntu','redhat','centos','fedora','freebsd','suse'
  default['backserver']['backup_dir']  = "/var"

else
  default['backserver']['backup_dir']  = "/var"
end
