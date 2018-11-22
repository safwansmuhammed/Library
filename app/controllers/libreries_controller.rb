class LibreriesController < ApplicationController
	# scope :visible, lambda {where(:visible => true)}
	def index
		
		@p = Librery.all
		@c = Category.all
		@b = Book.all
	end
	def show 
	end
	def new
		@p = Librery.new
	end
	def edit
		 @p = Librery.find(params[:id])
	end
	def create
		@user = current_user
		@p = @user.libreries.build(libray_name_params)      
		if @p.save   
			flash[:success] = 'Library was successfully created.'
		  redirect_to new_librery_url
		else 
		
		  flash[:success] = @p.errors.full_messages  
		  render :new 
		end   
	end

	def find_book_categories
		lib = Librery.find_by_id(params[:id])
		categories = lib.categories.order(name: :asc)
		render json: categories
	end

	private
	def libray_name_params
		params.require(:librery).permit(:libray_name, :user_id)
	end
end