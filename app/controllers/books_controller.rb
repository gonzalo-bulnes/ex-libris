class BooksController < ApplicationController
  respond_to :html

  def create
    @book = Book.new(params[:book])

    if @book.save
      redirect_to books_url
    else
      flash[:error] = "Indica la referencia del estante por favor."
      render action: :new
    end
    respond_with @book
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    respond_with @product
  end

  def edit
    @book = Book.find(params[:id])
    respond_with @book
  end

  def index
    @books = Book.all
    respond_with @records
  end

  def new
    @book = Book.new
    respond_with @book
  end

  def show
    @book = Book.find(params[:id])
    respond_with @book
  end

  def update
    @book = Book.find(params[:id])

    if @book.update_attributes(params[:book])
      flash[:notice] = "Successfully updated book."
    end
    respond_with @book
  end
end
