require 'spec_helper'

describe PagesController do

  describe "GET #home" do

    before(:each) do
      get 'home'
    end

    it "should return HTTP success" do
      response.should be_success
    end

    it "should render 'pages/home'" do
      response.should render_template :home
    end
  end
end
