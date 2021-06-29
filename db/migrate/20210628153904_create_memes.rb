class CreateMemes < ActiveRecord::Migration[6.1]
  def change
    create_table :memes do |t|
      t.string :title
      t.string :picture

      t.timestamps
    end
  end
end
