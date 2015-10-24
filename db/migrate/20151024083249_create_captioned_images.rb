class CreateCaptionedImages < ActiveRecord::Migration
  def change
    create_table :captioned_images do |t|
      t.string :image

      t.timestamps null: false
    end
  end
end
