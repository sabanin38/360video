server '163.172.151.148', user: 'root', roles: %w{app db web}

set :scm, :git
set :branch, :master
set :deploy_to, "/var/www/video360"
set :format, :pretty
set :pty, true

set :keep_releases, 3

set :rvm_type, :system
