class BunnySerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :weight, :temperament, :age
end
