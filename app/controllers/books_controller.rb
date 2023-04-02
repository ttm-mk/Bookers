class BooksController < ApplicationController
  
  def new
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/#{book.id}'
  end
  
  def index
    @Books = Book.all
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to '/books/:id'
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
  
# ストロングパラメータ
 private
 def book_params
    params.require(:book).permit(:title, :body)
 end
 
end

