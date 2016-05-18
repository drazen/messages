require 'rails_helper'

RSpec.describe "Messages", type: :request do

  describe "GET /messages" do

    it "returns the list of messages" do
      message1 = FactoryGirl.create(:message, body: 'I like #wine')
      message2 = FactoryGirl.create(:message, body: 'I like #beer')
      get messages_path
      expect(response).to have_http_status(200)
      expect(response.body).to include("#wine")
      expect(response.body).to include("#beer")
    end

  end

end
