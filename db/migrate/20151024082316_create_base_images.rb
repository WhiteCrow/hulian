class CreateBaseImages < ActiveRecord::Migration
  def change
    create_table :base_images do |t|
      t.string :image

      t.timestamps null: false
    end
  end
end
