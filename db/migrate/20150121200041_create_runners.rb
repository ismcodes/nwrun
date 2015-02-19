class CreateRunners < ActiveRecord::Migration
  def change
    create_table :runners do |t|
      t.string :name
      t.string :email
      t.timestamps null: false
    end
  end
end
