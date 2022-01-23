class Kid < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :want_rewards, dependent: :destroy
  has_many :target_rewards, dependent: :destroy
         
  validates :name, presence: true

  attachment :image
end
