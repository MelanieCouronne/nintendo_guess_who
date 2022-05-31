class UsersController < ApplicationController
  def profile
    @user = current_user
  end

  private

  def article_params
    params.require(:user).permit(:last_name, :first_name, :photo)
  end
end
