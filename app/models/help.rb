class Help < ApplicationRecord
  
  validates :name, presence: true
  validates :contents, presence: true
  validates :get_point, presence: true
end
