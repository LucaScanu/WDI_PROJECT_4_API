class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :bio, :image, :password_digest, :first_name, :last_name
end
