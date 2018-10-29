#
# Cookbook:: env-LZero
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute 'Add new php repository' do
    command 'sudo add-apt-repository ppa:ondrej/php'
    action :run
end

execute 'Update ubuntu repositories' do
    command 'sudo apt-get update'
    action :run
end

package 'git'
package 'tree'

package 'php7.1' do
    action :install
end

package 'php7.1-common' do
    action :install
end

package 'php7.1-curl' do
    action :install
end

package 'php7.1-xml' do
    action :install
end

package 'php7.1-zip' do
    action :install
end

package 'php7.1-gd' do
    action :install
end

package 'php7.1-mbstring' do
    action :install
end

package 'php7.1-fpm' do
    action :install
end

package 'php7.1-mcrypt' do
    action :install
end

package 'composer' do
    action :install
end