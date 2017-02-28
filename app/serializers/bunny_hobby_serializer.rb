class BunnyHobbySerializer < ActiveModel::Serializer
  attributes :id, :proficiency
  has_one :bunny
  has_one :hobby
end
