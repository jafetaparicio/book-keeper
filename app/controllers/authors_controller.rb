class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end
  
  def new
    @author = Author.new
  end
  
  def create
    @author = Author.new
    @author.first_name = params[:first_name]
    @author.last_name = params[:last_name]
    @author.picture_url = params[:picture_url]
    @author.bio = params[:bio]
    
    if @author.save
      redirect_to '/authors'
    else
      render action: 'new' 
    end
  end

  def edit
    @author = Author.find params[:id]
  end
  
  def update
    @author = Author.find params[:id]
    @author.first_name = params[:first_name]
    @author.last_name = params[:last_name]
    @author.bio= params[:bio]
    @author.picture_url = params[:picture_url]
   
    if @author.save
     redirect_to '/authors'
     else 
     render action: 'edit'
    end
  end
end
