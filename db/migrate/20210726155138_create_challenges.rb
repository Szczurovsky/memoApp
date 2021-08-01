class CreateChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :challenges do |t|
      t.string :string
      t.string :picture

      t.timestamps
    end
  end
end
