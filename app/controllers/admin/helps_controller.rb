class Admin::HelpsController < ApplicationController
  
  before_action :authenticate_admin!
  
  def index
    @helps = current_admin.helps
  end

  def new
    @help = Help.new
  end

  def create
    help = current_admin.helps.new(help_params)
    help.save
    redirect_to admin_helps_path
  end

  def show
    @help = Help.find(params[:id])
  end

  def edit
    @help = Help.find(params[:id])
  end

  def update
    @help = Help.find(params[:id])
    if @help.update(help_params)
      redirect_to admin_help_path
    else
      render :edit
    end
  end

  private

  def help_params
    params.require(:help).permit(:name, :contents, :get_point)
  end
end
