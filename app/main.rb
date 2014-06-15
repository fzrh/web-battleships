require 'sinatra'
require_relative '../lib/ship'
require_relative '../lib/ships'
require_relative '../lib/coordinate'
require_relative '../lib/coordinates'

enable :sessions
use Rack::Session::Pool, :expire_after => 60

# set :views, Proc.new {File.join(root, '..', "views")}
# set :public, Proc.new {File.join(root, '..', "public")}

get '/' do
	session[:player_count] = 0
	erb :index
end

get '/battlefield' do
	erb :battlefield
end