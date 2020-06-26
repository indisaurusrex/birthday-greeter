require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/' do
    ":)"
  end

end