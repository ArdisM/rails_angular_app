class CreatePilots < ActiveRecord::Migration
  def change
    create_table :pilots do |t|
      t.string :first_name
      t.string :last_name
      t.string :missions
      t.string :rank
      t.string :country
      t.string :url

      t.timestamps null: false
    end
  end
end
