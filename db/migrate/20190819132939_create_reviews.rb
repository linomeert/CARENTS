class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :description
      t.boolean :recommend
      t.references :playdate, foreign_key: true

      t.timestamps
    end
  end
end
