require 'random_data'

FactoryGirl.define do
  factory :list do
    title  RandomData.random_sentence
    description RandomData.random_sentence
    user_id nil

  end
end
