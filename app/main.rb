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
	erb :index
end

post '/login' do
	unless params[:name].empty?
		redirect '/battlefield'		
	else
    	@message = "We don't accept unknown human into the battlefield!"
    	erb :index
  	end
end

get '/battlefield' do
	erb :battlefield
end

get '/login' do
  redirect '/'
end