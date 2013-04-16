class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :stars
      t.text :comment
      t.references :idea
      t.references :user

      t.timestamps
    end
    add_index :ratings, :idea_id
    add_index :ratings, :user_id
  end
end
