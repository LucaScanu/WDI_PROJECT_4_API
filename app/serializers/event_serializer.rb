class EventSerializer < ActiveModel::Serializer
  attributes :id, :date, :name, :description, :maximum_guests, :available_spaces, :house_rules, :location, :latitude, :longitude, :price_per_head, :image
  has_one :user
  has_one :category
  has_many :requests
end
