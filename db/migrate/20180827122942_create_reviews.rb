class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :person
      t.string :occupation
      t.string :review

      t.timestamps
    end
  end
end
