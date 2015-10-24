class AddUserIdToCaptionedImages < ActiveRecord::Migration
  def change
    add_column :captioned_images, :user_id, :integer
    add_index :captioned_images, :user_id
  end
end
