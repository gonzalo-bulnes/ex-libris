require 'spec_helper'

describe Record do

  # attributes

  it "has a location" do
    should respond_to :location
  end

  it "has a state" do
    should respond_to :state
  end

  it "has an estimate of the number of books on the picture" do
    should respond_to :number_of_books_estimate
  end

  # associations

  xit "has many books" do
    pending "not implemented yet"
    should have_many :books
  end

  xit "has many comments" do
    pending "not implemented yet"
    should have_many :comments
  end

  # validations

  it "has a valid factory" do
    FactoryGirl.build(:record).should be_valid
  end

  it "requires a location" do
    FactoryGirl.build(:record, location: "").should_not be_valid
  end

  it "requires an estimate of the number of books on the picture" do
    FactoryGirl.build(:record, number_of_books_estimate: "").should_not be_valid
  end

end
