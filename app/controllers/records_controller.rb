# encoding: utf-8
class RecordsController < ApplicationController
  respond_to :html

  def create
    @record = Record.new(params[:record])
    if @record.save
      flash[:error] = "Nuevo registro creado con éxito."
    end
    redirect_to records_url
  end

  def index
    @records = Record.all
    respond_with @records
  end

  def new
    @record = Record.new
    respond_with @record
  end

  def show
    @record = Record.find(params[:id])
    respond_with @record
  end
end
