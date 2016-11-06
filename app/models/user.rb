class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :avatar, class_name: 'Photo', dependent: :destroy
  has_many :posts, dependent: :destroy

  validates :nickname, presence: true, uniqueness: { case_sensitive: false }
end
