class Hobby < ApplicationRecord
  has_many :bunny_hobbies
  has_many :bunnies, through: :bunny_hobbies
  accepts_nested_attributes_for :bunny_hobbies, :reject_if => :all_blank, :allow_destroy => true
end
