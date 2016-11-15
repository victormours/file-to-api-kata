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


end
