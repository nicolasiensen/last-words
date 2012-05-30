class AddMortalIdToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :mortal_id, :integer
  end
end
