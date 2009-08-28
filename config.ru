require 'open-twitter'

set :run, false
set :environment, :production

run Sinatra::Application
