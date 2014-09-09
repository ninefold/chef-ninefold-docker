#
# Cookbook Name:: ninefold_docker
# Recipe:: registry
#
# Copyright (C) 2014 Ninefold Pty Limited
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'

# requires a 64 character random string as a secret key
# so generate one if necessary

require 'securerandom'
node.set_unless['docker-registry']['secret_key'] = SecureRandom.hex(32)

node.set['docker-registry']['revision'] = "0.6.8"
node.set['docker-registry']['repository'] = "https://github.com/docker/docker-registry.git"
include_recipe 'docker-registry::application_server'
