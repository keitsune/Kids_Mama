class Admin::RewardItemsController < ApplicationController
  def index
    @reward_items = RewardItem.where(kid_id: params[:kid_id])
    @kid = Kid.find(params[:kid_id])
  end

  def update
    @reward_item = RewardItem.find(params[:id])
    @reward_item.update(reward_item_params)
    @kid = @reward_item.kid
    @reward = @reward_item.reward
    if @reward_item.reward_status == false
      @kid.update(points: @kid.points - @reward.total_point)
    end
    redirect_to admin_reward_items_path(kid_id: @kid.id)
  end

  private

  def reward_item_params
    params.require(:reward_item).permit(:kid_id, :reward_id, :reward_status)
  end
end
