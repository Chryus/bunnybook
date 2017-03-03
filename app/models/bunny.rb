class Bunny < ApplicationRecord
  has_many :bunny_hobbies
  has_many :hobbies, :through => :bunny_hobbies # -> { select("hobbies.*, bunny_hobbies.*, bunny_hobbies.proficiency") },
  accepts_nested_attributes_for :bunny_hobbies
end
