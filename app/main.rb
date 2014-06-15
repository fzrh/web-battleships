require 'sinatra'
require_relative '../lib/ship'
require_relative '../lib/ships'
require_relative '../lib/coordinate'
require_relative '../lib/coordinates'

enable :sessions
#use Rack::Session::Pool, :expire_after => 60

# set :views, Proc.new {File.join(root, '..', "views")}
# set :public, Proc.new {File.join(root, '..', "public")}

get '/' do
	erb :index
end

post '/login' do
	session[:player_name]= params[:name]
	unless session[:player_name].empty?
		redirect '/battlebase'		
	else
    	@message = "We don't accept unknown human into the battlefield!"
    	erb :index
  	end
end

get '/battlebase' do
	erb :battlebase
end

get '/login' do
  redirect '/'
end