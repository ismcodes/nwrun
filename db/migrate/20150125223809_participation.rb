class Participation < ActiveRecord::Migration
  def change
  	create_table :participations do |t|
      t.references :runner
      t.references :race

      t.timestamps null: false
    end
  end
end
