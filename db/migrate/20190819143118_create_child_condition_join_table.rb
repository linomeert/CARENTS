class CreateChildConditionJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :children, :conditions do |t|
          t.index [:child_id, :condition_id]
          t.index [:condition_id, :child_id]
    end
  end
end
