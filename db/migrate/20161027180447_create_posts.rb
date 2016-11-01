class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :poster_id
      t.integer :pairing_id

      t.timestamps
    end
  end
end
