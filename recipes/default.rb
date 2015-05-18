#
# Cookbook Name:: artifactory
# Recipe:: default
#
# Copyright 2015, thenathanjones
#
# All rights reserved - Do Not Redistribute
#

yum_package 'java-1.7.0-openjdk'
yum_package 'rsync'

artifactory_installer_cache_path = "#{Chef::Config[:file_cache_path]}/artifactory.rpm"
remote_file artifactory_installer_cache_path do
    source node['artifactory']['rpm_url']
    action :create
    not_if { ::File.exists?(artifactory_installer_cache_path) }
end

rpm_package "artifactory" do
    source artifactory_installer_cache_path
    action :install
end

template "/var/opt/jfrog/artifactory/etc/artifactory.config.xml" do
	source "artifactory.config.import.xml.erb"
end

service 'artifactory' do
	action :restart
end	