#
# Cookbook Name:: ninefold_docker
# Attributes:: default
#
# Copyright (C) 2014 Ninefold Pty Limited
#
# All rights reserved - Do Not Redistribute
#

default['ninefold_docker']['group_members'] = %w(user)

default['ninefold_docker']['images'] = [
  { :name => 'dockerfile/elasticsearch' },
  { :name => 'tutum/mysql' },
  { :name => 'dockerfile/ubuntu' },
  { :name => 'dockerfile/nodejs' },
  { :name => 'dockerfile/mongodb' },
  { :name => 'ubuntu' }
]

default['ninefold_docker']['delete_files'] = %w(
  /etc/hostname
  /home/user/.bash_history
  /root/.bash_history
)

default['ninefold_docker']['delete_dirs'] = %w(
  /etc/chef
  /var/chef
)
