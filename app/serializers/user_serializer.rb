class UserSerializer < ActiveModel::Serializer
  has_many :events
  attributes :id, :email, :image, :first_name, :last_name, :role, :description
end
