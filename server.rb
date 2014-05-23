require 'sinatra'
require_relative 'helpers.rb'

get '/' do
  redirect '/leaderboard'
end

get '/leaderboard' do
  @data = make_data()
  @title = "Game Time Leaderboard"
  erb :'leaderboard/leaderboard'
end

get 'teams/:team' do
  @title = params[:team]
  @data = make_data()
end
