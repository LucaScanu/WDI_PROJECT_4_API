class RequestSerializer < ActiveModel::Serializer
  attributes :id, :status
  # has_one :event
  has_one :sender
  has_one :receiver
end
