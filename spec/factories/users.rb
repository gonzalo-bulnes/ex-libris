FactoryGirl.define do

  factory :user do
    provider "open_id"
    uid "123456"
    name "test_user"
  end
end
