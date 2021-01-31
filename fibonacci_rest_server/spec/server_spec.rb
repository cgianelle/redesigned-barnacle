require_relative './../server'
require 'rspec'
require 'rack/test'

RSpec.describe 'Fibonacci Server App' do 
    include Rack::Test::Methods

    def app
        Sinatra::Application
    end

    it "returns 1 when given 2" do 
        get "/fibonacci/2"
        expect(last_response).to be_ok
        expect(last_response.body).to eq('fibonacci sequence for 2 is 1')
    end
end