class UserSerializer < ActiveModel::Serializer
  has_many :recipes
  attributes :id, :email, :image, :first_name, :last_name, :role, :description
end
