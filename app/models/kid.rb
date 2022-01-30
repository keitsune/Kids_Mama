class Kid < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :want_rewards, dependent: :destroy
  has_many :target_rewards, dependent: :destroy
  has_many :reward_items, dependent: :destroy
  has_many :help_items, dependent: :destroy
  belongs_to :admin

  validates :name, presence: true
  validates :points, length: {minimum: 0}

  attachment :image
end
