class UsersController < ApplicationController
  before_action :set_user, only: [:profile, :score]

  def profile
  end

  def score
  end

  #*** Not needed for now

  # def edit
  # end

  # def update
  #   @user.update(user_params)

  #   redirect_to profile_user_path(@user)
  # end

  private

  def set_user
    @user = current_user
  end

  # def user_params
  #   params.require(:user).permit(:email, :photo)
  # end
end
