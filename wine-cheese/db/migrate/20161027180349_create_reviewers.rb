class CreateReviewers < ActiveRecord::Migration[5.0]
  def change
    create_table :reviewers do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
