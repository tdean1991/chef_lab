#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'httpd' 

file '/var/www/html/index.html' do
    content '<html><head><title>Hello</title></head><body><h1>Hello, world!</h1></body></html>'    
end

service 'httpd' do
    action [:start, :enable]
end
