require 'sinatra/base'

class Bookmark_manager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/list' do
    erb :list 
  end
  run! if app_file == $0
end
