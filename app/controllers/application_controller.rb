require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :new
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @hero = params[:team][:members][1]
      erb :team
    end

end
