require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    result = PigLatinizer.new
    @user_result = result.to_pig_latin(params[:user_phrase])
    erb :results
  end
end
