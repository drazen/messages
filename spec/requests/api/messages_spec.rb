require 'rails_helper'

RSpec.describe "Messages", type: :request do

  # API endpoints
  describe "API POST /messages" do
    it "creates a message" do
      post '/api/messages', { body: 'A message from #earth', format: :json}
      expect(response).to have_http_status :created
      expect(response.headers['location']).to match(/messages\/\d*$/)
    end
  end

  describe "API POST /messages with empty message body", :type => :api do
    it "returns http failure unprocessable entity" do
      post '/api/messages', { body: '  ', format: :json}
      expect(response.status).to eq(422)
      expect(response.body).to match(/can't be blank/) #match(/error/)
    end
  end

  describe "API POST /messages with message exceeding character limit", :type => :api do
    it "returns http failure unprocessable entity" do
      post '/api/messages', { body: SecureRandom.hex(142), format: :json }
      expect(response.status).to eq(422)
      expect(response.body).to match(/too long/) #match(/error/)
    end
  end

end
