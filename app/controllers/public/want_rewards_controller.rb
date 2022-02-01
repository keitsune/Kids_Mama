class Public::WantRewardsController < ApplicationController

  before_action :authenticate_kid!

  def index
    @want_rewards = current_kid.want_rewards
  end

  def create
    @want_reward = WantReward.new(want_reward_params)
    @want_reward.kid_id = current_kid.id
    @want_reward.save
    redirect_to want_rewards_path
  end

  def destroy
    @want_reward = WantReward.find(params[:id])
    @want_reward.destroy
    redirect_to want_rewards_path
  end

  private

  def want_reward_params
    params.permit(:kid_id, :reward_id)
  end
end
