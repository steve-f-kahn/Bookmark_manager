require 'sinatra/base'
require './lib/bookmark'
class Bookmark_manager < Sinatra::Base
  enable :sessions
  get '/' do
    @titles = Bookmark.titles
    erb :index
  end

  get '/add_bookmark' do
    erb :add_bookmark
  end

  get '/remove_bookmark' do
    @titles = Bookmark.titles
    erb :remove_bookmark
  end

  post '/remove_bookmark' do
    p params[:title]
    Bookmark.remove(params[:title])
    redirect '/'
  end
  post '/bookmark' do
    @url = Bookmark.select(params[:title])
    erb :list
  end

  post '/add_bookmark' do
    Bookmark.new(params[:url], params[:title])
    redirect '/'
  end
  run! if app_file == $0
end
