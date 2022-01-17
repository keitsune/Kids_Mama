class Admin::KidsController < ApplicationController
  #before_action :authenricate_admin!
  def index
    @kids = Kid.all
  end

  def show
    @kid = Kid.find(params[:id])
  end

  private

  def kid_params
    params.require(:kid).permit(:name, :points, :image, :is_deleted)
  end
end
