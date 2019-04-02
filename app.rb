require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
      end

    post '/piglatinize' do
        app = PigLatinizer.new
        @piglatin = app.piglatinize(params[:user_phrase])
        erb :piglatinize
    end



end