class ChildInterestJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :children, :interests do |t|
          t.index [:child_id, :interest_id]
          t.index [:interest_id, :child_id]
    end
  end
end
