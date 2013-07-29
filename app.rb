require 'sinatra'

get '/' do 
	erb :tea
end

get '/:name/tea' do
	 @name = params[:name]
    erb :tea
end
