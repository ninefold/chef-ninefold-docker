#
# Cookbook Name:: ninefold_docker
# Recipe:: registry
#
# Copyright (C) 2014 Ninefold Pty Limited
#
# All rights reserved - Do Not Redistribute
#

# requires a 64 character random string as a secret key
# so generate one if necessary

require 'securerandom'

node.set_unless['docker-registry']['secret_key'] = SecureRandom.hex(32)

include_recipe 'docker-registry::application_server'
