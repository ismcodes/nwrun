class CreateEventManagers < ActiveRecord::Migration
  def change
    create_table :event_managers do |t|
      t.decimal :stdev
      t.decimal :mean
      t.integer :number_races
      t.string :event_name
      t.references :runner
      t.timestamps null: false
    end
  end
end
