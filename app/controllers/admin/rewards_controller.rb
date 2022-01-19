class Admin::RewardsController < ApplicationController
  #before_action :authenricate_admin!
  def index
    @rewards = Reward.all
  end

  def new
    @reward = Reward.new
  end

  def create
    reward = Reward.new(reward_params)
    reward.save
    redirect_to admin_rewards_path
  end

  def show
    @reward = Reward.find(params[:id])
  end

  def edit
    @reward = Reward.find(params[:id])
  end

  def update
    @reward = Reward.find(params[:id])
    if @reward.update(reward_params)
      redirect_to admin_reward_path
    else
      render :edit
    end
  end

  private

  def reward_params
    params.require(:reward).permit(:title, :message, :total_point, :image)
  end
end
