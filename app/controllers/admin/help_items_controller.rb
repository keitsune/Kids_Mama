class Admin::HelpItemsController < ApplicationController
  def index
    @help_items = HelpItem.where(kid_id: params[:kid_id])
    @kid = Kid.find(params[:kid_id])
  end

  def update
    @help_item = HelpItem.find(params[:id])
    @help_item.update(help_item_params)
    @kid = @help_item.kid
    @help = @help_item.help
    if @help_item.help_status == false
      @kid.update(points: @kid.points + @help.get_point)
    end
    redirect_to admin_help_items_path(kid_id: @kid.id)
  end

  private

  def help_item_params
    params.require(:help_item).permit(:kid_id, :help_id, :help_status)
  end
end
