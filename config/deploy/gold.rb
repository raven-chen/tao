server '182.92.168.27', user: 'app', roles: %w{app db web}
role :app, "182.92.168.27"

set :deploy_to, '/home/app/tao'
set :application, 'tao'
