require 'sinatra'


get '/' do
 	erb :FIRSTPAGE
end

get '/about' do
	erb :about
end

get '/book' do
  erb :book
end

get '/room' do
  erb :room
end

get '/home' do
 	erb :FIRSTPAGE
end
 

post '/results' do
		@b = Button.new
        @b.date = params[:datereserve]
        @b.rooms = params[:roomsreserve]
        erb :results
end 
        
class Button
	attr_reader :rooms
	attr_writer :rooms
	attr_reader :date	
	attr_writer :date
end

