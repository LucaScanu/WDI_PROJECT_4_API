class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :body, :category
  has_one :user
end
