require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    plain_english = PigLatinizer.new
    @pig_latin = plain_english.piglatinize(params[:user_phrase])
    erb :pig_latin
  end

end
