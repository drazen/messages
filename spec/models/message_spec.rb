require 'rails_helper'

RSpec.describe Message, type: :model do

  it "has a valid factory" do
    expect(create(:message)).to be_valid
  end

  it "is invalid without a body" do
    expect(build(:message, body: '  ')).to_not be_valid
  end

  it "is invalid with a body exceeding the character limit" do
    expect(build(:message, body: SecureRandom.hex(142))).to_not be_valid
  end

end
