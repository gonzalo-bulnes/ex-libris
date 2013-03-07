require 'spec_helper'

describe RecordsController do

  describe 'POST #create' do

    context "with valid attributes" do

      before(:each) do
        post 'create', FactoryGirl.attributes_for(:record)
      end

      it "should create a record" do
        pending "Not yet implemented."
      end

      it "should respond HTTP 200" do
        should respond_with :success
      end
    end

    context "with unvalid attributes" do

      before(:each) do
        post 'create', FactoryGirl.attributes_for(:record, location: "")
      end

      it "should render the form again" do
        should render_template 'records/new'
      end
    end
  end

  describe 'POST #index' do

    let!(:record) { FactoryGirl.create(:record) }
    let!(:another_record) { FactoryGirl.create(:record) }
    let!(:a_third_record) { FactoryGirl.create(:record) }

    it "should set @records with all of them" do
      pending "I don't know how to test that."
    end
  end

  describe 'GET #new' do

    it "should set @record with a new Record build" do
      pending "I don't know how to test that."
    end
  end
end