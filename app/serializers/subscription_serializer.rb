class SubscriptionSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :price, :frequency, :status, :created_at, :updated_at
end
