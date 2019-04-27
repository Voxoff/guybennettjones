class AddRelationToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :relation, :string
  end
end
