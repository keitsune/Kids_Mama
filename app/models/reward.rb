class Reward < ApplicationRecord

  has_many :want_rewards, dependent: :destroy
  has_many :target_rewards, dependent: :destroy
  has_many :reward_items, dependent: :destroy

  validates :title, presence: true
  validates :total_point, presence: true


  attachment :image
end
