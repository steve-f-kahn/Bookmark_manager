require 'sinatra/base'
require './lib/bookmark'
require './lib/database_connection'
require './lib/database'
class Bookmark_manager < Sinatra::Base
  enable :sessions
  enable :method_override
  DatabaseConnection.setup(Database.name)
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

  get '/update_bookmark' do
    @titles = Bookmark.titles
    erb :update_bookmark
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

  post '/update_bookmark' do
    session[:update_title] = params[:title]
    erb :update_bookmark_form
  end

  patch '/update_bookmark' do
    Bookmark.update(params[:url], params[:title], session[:update_title])
    redirect '/'
  end
  run! if app_file == $0
end
