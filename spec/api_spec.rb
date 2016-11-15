require "spec_helper"
require 'rack/test'
require_relative '../app/api'

RSpec.describe Api do
 include Rack::Test::Methods

  def app
    Api.new
  end

  it 'returns a success response' do
    get '/'
    expect(last_response).to be_ok
  end

  it 'returns a failed response' do
  	get '/app/data'
  	expect(last_response.status).to eq 404 
  end

  it 'return a movie' do
  	get 'app/movie/1'
  	expect(last_response).to be_ok
  end

end
