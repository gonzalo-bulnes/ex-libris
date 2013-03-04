require 'spec_helper'

describe User do

  # attributes

  it "should have a name" do
    should respond_to :name
  end

  it "should have an OmniAuth provider" do
    should respond_to :provider
  end

  it "should have an user ID provided by OmniAuth" do
    should respond_to :uid
  end

  # associations

  # validations

  it "should have valid factory" do
    FactoryGirl.build(:user).should be_valid
  end

  # methods

  describe '#from_omniauth' do
    pending "OmniAuth testing should be implemented as soon as possible."
  end

  describe '#create_from_omniauth' do
    pending "OmniAuth testing should be implemented as soon as possible."
  end
end
