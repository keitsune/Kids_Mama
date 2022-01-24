class Admin::KidsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @kids = current_admin.kids
  end

  def show
    @kid = Kid.find(params[:id])
  end

  private

  def kid_params
    params.require(:kid).permit(:name, :points, :image, :is_deleted)
  end
end
