class BooksController < ApplicationController
before_action :authenticate_user!

def index
  @books = Book.all
end

def show
 @book = Book.find(params[:id])
end

def new
  @book = current_user.books.build
end

def edit
 @book = Book.find(params[:id])
end
def destroy
@book = Book.find(params[:id])
@book.destroy
redirect_to books_path

 end

def create
 @book = current_user.books.build(book_params)

 if @book.save
redirect_to book_path(@book)
 else
    render 'new'
  end
end

def update
  @book = Book.find(params[:id])
  if @book.update(book_params)
    redirect_to book_path(@book)
else
  render 'edit'
end
end


private
 def book_params
  params.require(:book).permit(:title, :description)
 end
end