class Public::RewardItemsController < ApplicationController
  
  before_action :authenticate_user
  
  def index
    @kid = current_kid
    @reward_items = current_kid.reward_items
  end

  def create
    @reward_item = RewardItem.new(reward_item_params)
    @reward_item.kid_id = current_kid.id
    @reward_item.save
    redirect_to reward_items_path
  end

  private

  def reward_item_params
    params.permit(:kid_id, :reward_id, :reward_status)
  end
end
