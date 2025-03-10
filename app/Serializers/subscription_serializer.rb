class SubscriptionSerializer
  include JSONAPI::Serializer
  attributes :title, :price, :canceled, :frequency, :customer_id
end