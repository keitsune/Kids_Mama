class Reward < ApplicationRecord
  
  validates :title, presence: true
  validates :total_point, presence: true

  
  attachment :image
end
