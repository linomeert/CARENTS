class RemoveIconFromInterests < ActiveRecord::Migration[5.2]
  def change
    remove_column :interests, :icon, :string
  end
end
