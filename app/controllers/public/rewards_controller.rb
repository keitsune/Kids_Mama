class Public::RewardsController < ApplicationController
  
  before_action :authenticate_user
  
  def index
    @rewards = Reward.all
  end

  def show
    @reward = Reward.find(params[:id])
  end
  
  private
  
  def reward_params
    params.require(:reward).permit(:title, :message, :total_point, :image)
  end 
end
