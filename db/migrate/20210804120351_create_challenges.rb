class CreateChallenges < ActiveRecord::Migration[6.1]
  def change
    drop_table :challenges 

    create_table :challenges do |t|
      t.references :user, foreign_key: true
      t.integer :size
      t.string :number
      t.integer :time

      t.timestamps
    end
  end
end
