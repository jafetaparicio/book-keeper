class BooksController < ApplicationController
  def index
    @books = Book.all #load all the books
  end
  
  def new
  end
  
  def create
    @book = Book.new
    @book.title = params[:title]
    @book.description = params[:description]
    @book.pages = params[:pages]
    @book.author_id = params[:author_id]
    @book.amazon_url = params[:amazon_url]
    @book.picture_url = params[:picture_url]
    @book.save
    #we want to redirect back to index
    redirect_to '/books'
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
    @book.save

    redirect_to '/books'
  end
  
  def show #to show the specific book
    @book = Book.find params[:id]
  end
end
