require 'sinatra'
require_relative 'helpers.rb'

get '/' do
  redirect '/leaderboard'
end

get '/leaderboard' do
  @data = make_data()
  @title = "Game Time Leaderboard"
  @teamdata = team_data(@data).sort_by { |team, record| [-record[0], record[1]] }

  erb :'leaderboard/leaderboard'
end

get '/teams/:team' do
  @title = params[:team]
  @data = make_data()
  @teamdata = team_data(@data)

  erb :'teams/team'
end
