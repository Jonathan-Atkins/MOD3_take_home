class TeaSubscription < ApplicationRecord
  belongs_to :subscription
  belongs_to :tea

  validates :subscription, :tea, presence: true  
end
