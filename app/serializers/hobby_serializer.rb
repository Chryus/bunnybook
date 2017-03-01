class HobbySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :bunnies
end
