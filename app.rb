require 'sinatra'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(

	:adapter => 'sqlite3',
	:database => 'db/app.sqlite3.db'
	
	);


class Table<ActiveRecord::Base
end

get '/' do
	@new = Table.all
	erb :myform
end

post '/myform' do
	@data = Table.new
	@data.content = params[:message]
	@data.save

	redirect '/'
end