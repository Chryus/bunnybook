class BunnySerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :weight, :temperament, :age
  has_many :hobbies
end
