class BooksController < ApplicationController
  def index
    @books = Book.all #load all the books
  end
  
  def new
    @book = Book.new #will not be saved to the date base
  end
  
  def create
    @book = Book.new
    @book.title = params[:title]
    @book.description = params[:description]
    @book.pages = params[:pages]
    @book.author_id = params[:author_id]
    @book.amazon_url = params[:amazon_url]
    @book.picture_url = params[:picture_url]
    
    if @book.save
      redirect_to '/books'
    else
      render action: 'new' 
    end
  end
  
  def edit
    @book = Book.find params[:id]
  end
  
  def update
    @book = Book.find params[:id]
    @book.title = params[:title]
    @book.description = params[:description]
    @book.pages = params[:pages]
    @book.author_id = params[:author_id]
    @book.amazon_url = params[:amazon_url]
    @book.picture_url = params[:picture_url]
   
    if @book.save
     redirect_to '/books'
     else 
     render action: 'edit'
    end
  end
  
  def show #to show the specific book
    @book = Book.find params[:id]
  end
end
