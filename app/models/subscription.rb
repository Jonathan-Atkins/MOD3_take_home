class Subscription < ApplicationRecord
  belongs_to :customer
  has_many :tea_subscriptions
  has_many :teas, through: :tea_subscriptions

  validates :title, :price, :cancelled, :frequency, presence: true
  validates :price, numericality: { greater_than: 0 }
end
