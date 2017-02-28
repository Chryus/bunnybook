class CreateBunnyHobbies < ActiveRecord::Migration[5.0]
  def change
    create_table :bunny_hobbies do |t|
      t.references :bunny, foreign_key: true
      t.references :hobby, foreign_key: true
      t.integer :proficiency

      t.timestamps
    end
  end
end
