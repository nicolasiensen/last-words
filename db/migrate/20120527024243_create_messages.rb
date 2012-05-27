class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :text
      t.integer :days_to_send

      t.timestamps
    end
  end
end
