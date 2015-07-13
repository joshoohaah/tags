#
# Cookbook Name:: tags
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

unless tagged?('test_tag')

  tag_method  = method(:tag)

  ruby_block 'complete' do
    block do
      tag_method.call 'test_tag'
      node.save
    end
  end
end
