class UsersController < ApplicationController

  def new
  end
  
  def create
    @user = User.new(user_params)
    @user.save
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end
 
private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :birthdate, :birth_place, :address_1, :address_2, :zipcode, :city, :phone_number, :last_degree, :nationality)

  end
 
end