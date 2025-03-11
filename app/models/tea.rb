class Tea < ApplicationRecord
  has_many :tea_subscriptions
  has_many :subscriptions, through: :tea_subscriptions

  validates :title, presence: true
  validates :price, presence: true
end