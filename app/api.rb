require "bundler/setup"
require 'sinatra/base'

class Api < Sinatra::Base


	get '/' do
		"hello world!"
	end

  get '/app/movie/:id' do
  	json_file = File.read('data.json')
  	json_parsed = JSON.parse(json_file)
  	json_parsed["movies"][0]
  end

end
