class BooksController < ApplicationController
  
  def create
    book = Book.new(book_params)
    if book.save
      flash[:notice] = "The book was submitted successfully."
      redirect_to book_path(book.id)
    else
      render :index
    end
  end
  
  def index
    @book = Book.new
    @books = Book.all
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
    flash[:notice] = "The book was successfully updated."
    redirect_to book_path(book.id)
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

