require 'spec_helper'

describe PagesController do

  describe "GET #home" do

    it "should return HTTP success" do
      get 'home'

      response.should be_success
    end

    it "should render 'pages/home'" do
      get 'home'

      response.should render_template :home
    end
  end
end
