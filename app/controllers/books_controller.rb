class BooksController < ApplicationController

  def show
  end

  def index
    @book=Book.new
    @books=Book.all
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def edit
  end
  
  private
  
   def post_books
    params.require(:book).permit(:title, :body)
   end
  
end

