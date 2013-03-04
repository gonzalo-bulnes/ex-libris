require 'spec_helper'

describe SessionsController do

  describe "POST #create" do

    it "should return HTTP success" do
      pending "OmniAuth testing should be implemented as soon as possible."
      post 'create'
      response.should be_success
    end

    it "should render 'pages/home'" do
      pending "OmniAuth testing should be implemented as soon as possible."
      post 'create'
      response.should render_template :home
    end
  end

  describe "GET #destroy" do

    it "should return HTTP success" do
      pending "OmniAuth testing should be implemented as soon as possible."
      get 'destroy'
      response.should be_success
    end

    it "should render 'pages/home'" do
      pending "OmniAuth testing should be implemented as soon as possible."
      get 'destroy'
      response.should render_template :home
    end
  end
end
