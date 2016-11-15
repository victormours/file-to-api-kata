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

  it 'returns the name of the movie' do
    get 'app/movie/1'
    expect(last_response.body).to include("The Gold Rush")
  end

  it 'returns the year of the movie' do
  	get 'app/movie/2'
  	expect(last_response.body).to include("1931")
  end

  it 'returns the year as part of a json structure' do
    get 'app/movie/1'
    parsed_response = JSON.parse(last_response.body)
    expect(parsed_response["year"]).to eq(1925)
  end

end
