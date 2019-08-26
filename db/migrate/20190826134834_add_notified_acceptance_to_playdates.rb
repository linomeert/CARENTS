class AddNotifiedAcceptanceToPlaydates < ActiveRecord::Migration[5.2]
  def change
    add_column :playdates, :notified_acceptance, :boolean
  end
end
