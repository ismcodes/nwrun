class CreateRunners < ActiveRecord::Migration
  def change
    create_table :runners do |t|
      t.string :name
      t.integer :year
      t.timestamps null: false
    end
  end
end
