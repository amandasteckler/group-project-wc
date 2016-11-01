class AddContentToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :content, :text
  end
end
