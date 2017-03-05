class Bunny < ApplicationRecord
  has_many :bunny_hobbies
  has_many :hobbies, -> { select("hobbies.*, bunny_hobbies.proficiency as hobby_proficiency") },
          through: :bunny_hobbies
  accepts_nested_attributes_for :bunny_hobbies
end
