require 'faker'

FactoryGirl.define do
  factory :message do
    # create a hip message
    body {Faker::Hipster.sentences(rand 1..3).join(' ').truncate(141)}
  end
end
