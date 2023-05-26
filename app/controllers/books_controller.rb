class BooksController < ApplicationController
  def top
    @book = Book.new  
  end  
 
  def create
   
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "投稿完了"
      redirect_to book_path(@book.id)
    else
      flash.now[:alret] = "投稿失敗"
      @books = Book.all
      render "index"

   end
  end
  
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy 
    redirect_to '/books' 
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
    
  

