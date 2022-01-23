class WantReward < ApplicationRecord
  
  belongs_to :kid
  belongs_to :reward
  
end
