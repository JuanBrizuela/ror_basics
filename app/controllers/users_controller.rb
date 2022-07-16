class UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    @user = current_user

    if @user.update(user_params)
      flash[:notice] = "User updated"
      render :edit, status: :ok
    else
      flash[:alert] = "Error during update: #{@user.errors.full_messages.join(', ')}"
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :profile_picture
    )
  end
end
