class AddPhotoToInterests < ActiveRecord::Migration[5.2]
  def change
    add_column :interests, :photo, :string
  end
end
