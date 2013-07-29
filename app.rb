require 'sinatra'

get '/' do 
	erb :tea
end

get '/:name/tea' do
	 @name = params[:name]
    erb :tea
end

get '/' do 
	erb :sugar
end

get '/:name/sugar' do
	 @name = params[:name]
    erb :sugar
end

get '/' do 
	erb :milk
end

get '/:name/milk' do
	 @name = params[:name]
    erb :milk
end