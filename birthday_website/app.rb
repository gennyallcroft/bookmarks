require 'sinatra/base'
require 'person'

class Birthday < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/birthday' do
    person = Person.new(params[:name], params[:birthday])
    erb(:birthday)
  end

  run! if app_file == $0

end
