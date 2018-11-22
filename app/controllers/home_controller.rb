class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		redirect_to libreries_path
  	end
  end
end
