class CustomerSubscription < ApplicationRecord
  belongs_to :customer
  belongs_to :subscription

  validates :customer, :subscription, presence: true
end