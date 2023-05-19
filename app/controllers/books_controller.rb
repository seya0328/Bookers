class BooksController < ApplicationController
  def top
    @users = User.all
  end  
  
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id]) 
  end

  def edit
  end
end
