class Public::KidsController < ApplicationController
  def show
    @kid = current_kid
  end

  def edit
    @kid = current_kid
  end

  def update
    @kid = current_kid
    if @kid.update(kid_params)
      redirect_to kids_path
    else
      render :edit
    end
  end

  def unsubscribe
    @kid = current_kid
  end

  def withdraw
    @kid = current_kid
    @kid.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  private

  def kid_params
    params.require(:kid).permit(:name, :points, :image, :is_deleted)
  end
end
