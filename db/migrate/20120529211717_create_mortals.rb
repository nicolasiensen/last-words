class CreateMortals < ActiveRecord::Migration
  def change
    create_table :mortals do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :image
      t.string :uid
      t.text :token

      t.timestamps
    end
  end
end
