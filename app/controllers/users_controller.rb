class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
				
	# sign up page
	def new
    @user = User.new
  end

	# submission of signup form
	def create
    @user = User.new(params[:user])
    if @user.save
      # Handle a successful save.
			redirect_to @user
    else
      render 'new'
    end
  end
end
