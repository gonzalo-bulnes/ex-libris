class RecordsController < ApplicationController

  def create
    @record = Record.new(params[:record])

    if @record.save
      redirect_to records_url
    else
      flash[:error] = "Indica la referencia del estante por favor."
      render action: :new
    end
  end

  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end
end
