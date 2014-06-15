require 'sinatra'
require_relative '../lib/ship'
require_relative '../lib/ships'
require_relative '../lib/coordinate'
require_relative '../lib/coordinates'

# set :views, Proc.new {File.join(root, '..', "views")}
# set :public, Proc.new {File.join(root, '..', "public")}

use Rack::Session::Pool, :expire_after => 60

enable :sessions

get '/' do
	session[:player_count] = 0
	erb :index
end

post '/player_login' do
	erb :player_login
end

get '/battlefield' do
	erb :battlefield
end