class BunnySerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :weight, :temperament, :age, :hobbies
  def hobbies
    self.object.hobbies
  end
end
