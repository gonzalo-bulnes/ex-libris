require 'spec_helper'

describe Book do

  # attributes

  it "has an author" do
    should respond_to :author
  end

  it "has an editor" do
    should respond_to :editor
  end

  it "has a title" do
    should respond_to :title
  end

  it "has a publisher" do
    should respond_to :publisher
  end

  it "has a year of publication" do
    should respond_to :year
  end

  it "has a volume" do
    should respond_to :volume
  end

  it "has a number" do
    should respond_to :number
  end

  it "has a series" do
    should respond_to :series
  end

  it "has an address" do
    should respond_to :address
  end

  it "has an edition" do
    should respond_to :edition
  end

  it "has a month" do
    should respond_to :month
  end

  it "has a note" do
    should respond_to :note
  end

  it "has a key" do
    should respond_to :key
  end

  it "has an isbn" do
    should respond_to :isbn
  end

  # associations

  it "belongs to a record" do
    should belong_to :record
  end

  # validations

  it "should have valid factory" do
    FactoryGirl.build(:book).should be_valid
  end

  it "requires an author or an editor" do
    pending "Not implemented yet. Remember to fix the factory after fixing this."
    FactoryGirl.build(:book, editor: "", author: "").should_not be_valid
    FactoryGirl.build(:book, editor: "").should be_valid
    FactoryGirl.build(:book, author: "").should be_valid
  end

  it "requires a title" do
    FactoryGirl.build(:book, title: "").should_not be_valid
  end

  it "requires a publisher" do
    FactoryGirl.build(:book, publisher: "").should_not be_valid
  end

  it "requires a year of publication" do
    FactoryGirl.build(:book, year: "").should_not be_valid
  end

  it "validates the ISBN number" do
    pending "Not yet implemented."
  end

  it "validates the number" do
    pending "Not yet implemented."
  end

  it "validates the volume" do
    pending "Not yet implemented."
  end

  it "validates the month of publication" do
    pending "Not yet implemented."
  end

  it "validates the year of publication" do
    pending "Not yet implemented."
  end
end
