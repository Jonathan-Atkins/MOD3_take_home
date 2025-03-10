class Subscription < ApplicationRecord
  has_many :tea_subscriptions
  has_many :teas, through: :tea_subscriptions
  has_many :customer_subscriptions
  has_many :customers, through: :customer_subscriptions

  validates :title, :price, :frequency, presence: true
  validates :price, numericality: { greater_than: 0 }

  attribute :canceled, :boolean, default: false
end