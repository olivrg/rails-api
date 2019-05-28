class CreateDrops < ActiveRecord::Migration[5.2]
  def change
    create_table :drops do |t|
      t.string :title
      t.date :release_date
      t.time :release_time
      t.text :description
      t.decimal :price
      t.string :brand

      t.timestamps
    end
  end
end
