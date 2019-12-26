class User < ApplicationRecord
  has_many :user_actions

  has_one_attached :avatar

  devise :database_authenticatable
end
