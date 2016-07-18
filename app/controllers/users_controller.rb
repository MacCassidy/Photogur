class UsersController < ApplicationController
  def register
    @user = User.new
  end
  def create
    @user = User.new(name: params[:name], email: params[:email], password: params[:password])
    if @user.save
      redirect_to congratz_path
    else
      redirect_to sorry_path
    end
  end

  def login
  end



private
  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
