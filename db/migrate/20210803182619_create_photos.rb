class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :image_data
      t.references :user
      t.timestamps
    end
  end
end
