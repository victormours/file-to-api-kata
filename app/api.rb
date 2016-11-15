require "bundler/setup"
require 'sinatra/base'

class Api < Sinatra::Base


	get '/' do
		"hello world!"
	end

  get '/app/movie/:id' do
  	File.read('data.json')
  end

end
