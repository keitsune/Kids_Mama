class Public::HelpsController < ApplicationController

  before_action :authenticate_kid!

  def index
    @helps = current_kid.admin.helps
  end
end
