class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :nickname, presence: true, uniqueness: { case_sensitive: false }
end
