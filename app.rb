require 'sinatra/base'

class Bookmark_manager < Sinatra::Base
  get '/' do
    "Hello World!"
  end

  run! if app_file == $0
end
