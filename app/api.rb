require "bundler/setup"
require 'sinatra/base'

class Api < Sinatra::Base


	get '/' do
		"hello world!"
	end


end
