class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.date :_on
      t.string :name

      t.timestamps null: false
    end
  end
end
