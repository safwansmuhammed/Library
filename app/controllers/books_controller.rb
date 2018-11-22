class BooksController < ApplicationController
  def index
    @b = Book.all
    @c = Category.all
    @l = Librery.all
  end

  def show
    
  end

  def new
    @book = Book.new
  end

  def create
    @user = current_user
    @book_name = @user.books.build(book_name_params)       
    if @book_name.save 
      flash[:success] = 'Saved Successfully.'
      redirect_to books_path  
    else   
      render :new 
    end 
  end

  def edit
    @book = Book.find(params[:id])
  end
  def update
    @book = Book.find(params[:id])
 
  if @book.update(book_name_params)
    redirect_to books_path
  else
    render 'edit'
  end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end



  private
  def book_name_params
    params.require(:book).permit(:book_name, :category_id, :lib_name, :user_id)
  end
end
