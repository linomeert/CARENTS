class AddReadatToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :readat, :datetime
  end
end
