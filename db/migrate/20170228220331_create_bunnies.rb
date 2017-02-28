class CreateBunnies < ActiveRecord::Migration[5.0]
  def change
    create_table :bunnies do |t|
      t.string :name
      t.string :breed
      t.string :weight
      t.string :temperament
      t.integer :age

      t.timestamps
    end
  end
end
