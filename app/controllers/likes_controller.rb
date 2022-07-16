class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    if Like.create(like_params)
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "Something went wrong"
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    Like.find_by(id: params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def like_params
    params.permit(:likable_type, :likable_id).merge(user_id: current_user.id)
  end
end
