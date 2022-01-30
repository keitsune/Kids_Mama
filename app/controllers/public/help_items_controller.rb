class Public::HelpItemsController < ApplicationController
  
  before_action :authenticate_user
  
  def index
    @kid = current_kid
    @help_items = current_kid.help_items
  end

  def create
    @help_item = HelpItem.new(help_item_params)
    @help_item.kid_id = current_kid.id
    @help_item.save
    redirect_to help_items_path
  end

  private

  def help_item_params
    params.permit(:kid_id, :help_id, :help_status)
  end
end
