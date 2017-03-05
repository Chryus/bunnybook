class AddImgUrlToBunnies < ActiveRecord::Migration[5.0]
  def change
    add_column :bunnies, :img_url, :string
  end
end
