require 'sinatra/base'
require_relative 'web_helper'

class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/birthday' do
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    birthday?(@day, @month)
    erb :birthday
  end

  run! if app_file == $0

end