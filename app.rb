require 'sinatra/base'

class BirthdayApp < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/birthday' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect to('/show_birthday')
  end

  get '/show_birthday' do
    "it's your birthday!"
  end

  run! if app_file == $0
end