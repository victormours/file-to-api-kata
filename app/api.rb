require "bundler/setup"
require 'sinatra/base'

class Api < Sinatra::Base


	get '/' do
		"hello world!"
	end

  get '/app/movie/1' do
  	File.read('data.json')
  end

end
