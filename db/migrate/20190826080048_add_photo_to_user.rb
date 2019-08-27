class AddPhotoToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :bannerphoto, :string
  end
end
