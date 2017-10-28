class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
    @user = User.find(params[:id])  	
  end

  def create
  	@user = User.new(user_params)
  end

  private
   def user_params
   	@user = params.require(:user).permit(:name, :email, :my_profile, :image)
   end
end
