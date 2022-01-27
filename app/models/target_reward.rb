class TargetReward < ApplicationRecord

  belongs_to :kid
  belongs_to :reward

  validates :reward_id, uniqueness: true

end
