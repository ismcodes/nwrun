class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.integer :finish_time
      t.string :event
      t.references :meet
      t.timestamps null: false
    end
  end
end
