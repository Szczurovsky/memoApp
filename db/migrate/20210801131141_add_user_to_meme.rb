class AddUserToMeme < ActiveRecord::Migration[6.1]
  def change
    add_reference :memes, :user, foreign_key: true
  end
end
