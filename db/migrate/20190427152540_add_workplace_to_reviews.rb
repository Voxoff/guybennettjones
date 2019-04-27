class AddWorkplaceToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :workplace, :string
  end
end
