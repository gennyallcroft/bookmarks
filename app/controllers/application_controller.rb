require 'sinatra/base'
require './app/models/Bookmark.rb'

class ApplicationManager < Sinatra::Base

  configure do
    enable :session
    set :views, "app/views"
    set :public_dir, "public"
  end

  get '/'  do
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.list
    erb(:bookmarks)
  end

  get '/add_bookmarks' do
    erb(:add_bookmark)
  end

  post '/add_bookmarks' do
    @bookmarks = Bookmark.list
    @updated_bookmarks = Bookmark.add
    redirect '/bookmarks'
  end

  run! if app_file == $0

end
