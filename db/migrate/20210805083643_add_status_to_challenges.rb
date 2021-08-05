class AddStatusToChallenges < ActiveRecord::Migration[6.1]
  def change
    add_column :challenges, :status, :string
  end
end
