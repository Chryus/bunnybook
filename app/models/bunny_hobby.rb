class BunnyHobby < ApplicationRecord
  belongs_to :bunny, required: false
  belongs_to :hobby
end
