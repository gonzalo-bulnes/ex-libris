class PagesController < ApplicationController
  # GET /
  def home
    if current_user
      redirect_to records_url
    end
  end
end
