require 'sinatra'

class Book_Marks < Sinatra::Base

  get '/' do
    'Hello World'
  end

  get '/index' do
    'www.google.com'
end

end