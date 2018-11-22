class CategoriesController < ApplicationController
  

  def index
     @c = Category.all
     @l = Librery.all
  end

  def show
  end

  def new
    @name = Category.new
  end

  def create
    @user = current_user
    @name = @user.categories.build(category_name_params)       
    if @name.save
    flash[:success] = 'Category was successfully created.'  
      redirect_to categories_url  
    else   
      flash[:success] = @name.errors.full_messages
      render :new 
    end 
  end

  def edit
    @name = Category.find(params[:id])
  end
  private
  def category_name_params
    params.require(:category).permit(:name, :librery_id,:user_id)
  end
end
