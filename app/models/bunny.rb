class Bunny < ApplicationRecord
  has_many :bunny_hobbies
  has_many :hobbies, through: :bunny_hobbies
end
