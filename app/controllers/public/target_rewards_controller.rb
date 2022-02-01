class Public::TargetRewardsController < ApplicationController

  before_action :authenticate_kid!

  def index
    @target_rewards = current_kid.target_rewards

  end

  def create
    @target_reward = TargetReward.new(target_reward_params)
    @target_reward.kid_id = current_kid.id
    @target_reward.save
    redirect_to target_rewards_path
  end

  def destroy
    @target_reward = TargetReward.find(params[:id])
    @target_reward.destroy
    redirect_to target_rewards_path
  end

  private

  def target_reward_params
    params.permit(:kid_id, :reward_id)
  end
end
