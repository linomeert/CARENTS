class CreatePlaydates < ActiveRecord::Migration[5.2]
  def change
    create_table :playdates do |t|
      t.string :location
      t.text :description
      t.boolean :status
      t.datetime :date
      t.references :inviter, foreign_key: { to_table: 'users' }
      t.references :receiver, foreign_key: { to_table: 'users' }
      t.timestamps
    end
  end
end

