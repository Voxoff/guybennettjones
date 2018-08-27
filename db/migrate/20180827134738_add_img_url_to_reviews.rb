class AddImgUrlToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :img_url, :string
  end
end
