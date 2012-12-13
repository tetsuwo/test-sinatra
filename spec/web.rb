require './web'
require 'rack/test'

set :environment, :test

describe 'web' do
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	it "says hello" do
		get '/'
		last_response.should be_ok
	end
end
