class AddPhotoToUser < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :reviews, :users
  end
end
