class Public::HelpsController < ApplicationController
  
  before_action :authenticate_user
  
  def index
    @helps = Help.all
  end
end
