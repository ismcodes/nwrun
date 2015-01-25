class Signup < ActiveRecord::Migration
  def change
  	create_table :signups do |t|
      t.references :runner
      t.references :meet
      t.timestamps null: false
    end
  end
end
