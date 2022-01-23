class Public::HelpsController < ApplicationController
  def index
    @helps = Help.all
  end
end
