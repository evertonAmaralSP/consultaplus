class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create

    @user = User.new(user_params)
 
#    require "pry-debugger"; binding.pry 
    if @user.save
      @users = User.find(:all)
      render :list
    else
      render :new
    end
  end

  def list
  	@users = User.find(:all)
  end	

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :email, :password, :role)
  end
end
