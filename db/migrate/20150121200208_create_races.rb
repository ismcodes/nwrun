class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :event
      t.references :meet
      t.timestamps null: false
    end
  end
end
