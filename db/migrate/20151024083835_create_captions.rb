class CreateCaptions < ActiveRecord::Migration
  def change
    create_table :captions do |t|
      t.string :line1
      t.string :line2

      t.timestamps null: false
    end
  end
end
