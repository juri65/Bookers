class BooksController < ApplicationController
  def new
    @book = Book.new  
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/show'
  end 
  
  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Bkko.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  
  private
  def book_params
    params.require(:book).permit(:title,:body)
  end 
  
end
