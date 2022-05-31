class UsersController < ApplicationController
  def profile
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update!
    redirect_to user_profile_path(@user)
  end

  private

  def article_params
    params.require(:user).permit(:email, :password, :photo)
  end
end
