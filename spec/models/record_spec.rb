require 'spec_helper'

describe Record do

  # attributes

  it "should have a location" do
    should respond_to :location
  end

  it "should have an picture" do
    should respond_to :picture
  end

  it "should have a state" do
    should respond_to :state
  end

  # associations

  xit "should have many books" do
    pending "not implemented yet"
    should have_many :books
  end

  xit "should have many comments" do
    pending "not implemented yet"
    should have_many :comments
  end

  # validations

  it "should have valid factory" do
    FactoryGirl.build(:record).should be_valid
  end

  it "should require a location" do
    FactoryGirl.build(:record, location: "").should_not be_valid
  end

end
