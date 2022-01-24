class Help < ApplicationRecord

  has_many :help_items, dependent: :destroy

  validates :name, presence: true
  validates :contents, presence: true
  validates :get_point, presence: true
end
