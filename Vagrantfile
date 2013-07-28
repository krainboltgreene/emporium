#!/usr/bin/env ruby -wKU
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "default"
  config.vm.box_url = "http://static.aldoborrero.com/vagrant/quantal64.box"
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks/"
    chef.add_recipe "apt"
    chef.add_recipe "build-essential"
    chef.add_recipe "xml"
    chef.add_recipe "zlib"
    chef.add_recipe "nginx::source"
    chef.add_recipe "sqlite"
    chef.add_recipe "memcached"
    chef.add_recipe "phantomjs"
    # chef.add_recipe "redisio"
    # chef.add_recipe "imagemagick"
  end

  config.vm.provision :shell, inline: "gem install bundler"
end
