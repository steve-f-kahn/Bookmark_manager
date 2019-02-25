require 'sinatra/base'
require './lib/bookmark'
class Bookmark_manager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :list
  end
  run! if app_file == $0
end
