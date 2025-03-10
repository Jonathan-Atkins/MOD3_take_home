class TeaSubscription < ApplicationRecord
  belongs_to :subscription
  belongs_to :tea
end
