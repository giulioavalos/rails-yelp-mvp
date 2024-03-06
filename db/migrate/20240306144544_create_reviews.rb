class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :content, null: false
      t.references :restaurant, null: false, foreign_key: {on_delete: :cascade}

      t.timestamps
    end

    add_index :reviews, :rating
  end
end
