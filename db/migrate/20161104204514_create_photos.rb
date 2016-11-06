class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :image
      t.references :post
      t.references :user

      t.timestamps
    end
  end
end
