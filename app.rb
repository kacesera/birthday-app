require 'sinatra/base'
require './lib/birthday_calculator.rb'

class BirthdayApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/birthday' do
    p params
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect to('/store_birthday')
  end

  get '/store_birthday' do
    session[:bday] = BirthdayCalculator.new(session[:day], session[:month])
    redirect to('/happy_birthday') if session[:bday].birthday_today?
    redirect to('/days_til_bday')
  end

  get '/days_til_bday' do
    erb :count_days
  end

  get '/happy_birthday' do
    erb :happy_birthday
  end

  run! if app_file == $0
end