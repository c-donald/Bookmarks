require 'sinatra'
require_relative './lib/bookmarks.rb'

class Book_Marks < Sinatra::Base

  get '/' do
    'Hello World'
  end

  get '/index' do
    'www.google.com'
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.all
    erb(:bookmarks)
  end

  get '/bookmarks/new' do
  erb(:add)
  end

  post '/bookmarks/new' do
   #add to the database
   Bookmarks.add(params[:url])
  redirect ('/bookmarks')
  end
end