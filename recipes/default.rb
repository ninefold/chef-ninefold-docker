#
# Cookbook Name:: ninefold_docker
# Recipe:: default
#
# Copyright (C) 2014 Ninefold Pty Limited
#
# All rights reserved - Do Not Redistribute
#
# Set up a server with docker
#

include_recipe 'apt'

execute 'apt-get -y dist-upgrade'

# set up users
node.set['docker']['group_members'] = node['ninefold_docker']['group_members']

# set up docker
include_recipe 'docker'

# pull in any containers, will update with latest available
# use :pull_if_missing for one time pull from registry
# TODO: uses default docker registry - specify location of image?

node['ninefold_docker']['images'].each do |image|
  docker_image image[:name] do
    tag image[:tag] if image[:tag]
    action :pull
  end
end

include_recipe 'ninefold_docker::cleanup'