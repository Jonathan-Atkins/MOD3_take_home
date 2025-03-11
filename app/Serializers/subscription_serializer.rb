class SubscriptionSerializer
  include JSONAPI::Serializer
  attributes :title, :price, :canceled, :frequency
  
  has_many :teas
  has_many :customers
end