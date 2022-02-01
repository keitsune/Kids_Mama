class Public::RewardsController < ApplicationController

  before_action :authenticate_kid!

  def index
    @rewards = current_kid.admin.rewards
  end

  def show
    @reward = Reward.find(params[:id])
  end

  private

  def reward_params
    params.require(:reward).permit(:title, :message, :total_point, :image)
  end
end
