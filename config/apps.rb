Padrino.configure_apps do
  # enable :sessions
  set :session_secret, '30bb7cbb447e77bd393b29ee12f6d8f4f7ab6d07f08d1297b0e2c95edba7f08a'
  set :protection, true
  set :protect_from_csrf, true
end

# Mounts the core application for this project
Padrino.mount('Confy::Api', :app_file => Padrino.root('api/api.rb')).to('/api')
Padrino.mount('Confy::App', :app_file => Padrino.root('app/app.rb')).to('/')
