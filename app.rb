require 'sinatra/base'
require './lib/bookmark'
class Bookmark_manager < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end
  get '/add_bookmark' do
    erb :add_bookmark
  end
  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :list
  end

  post '/add_bookmark' do
    Bookmark.new(params[:url])
    redirect '/'
  end
  run! if app_file == $0
end
