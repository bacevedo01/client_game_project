class CreateFriendsrequests < ActiveRecord::Migration[5.0]
  def change
    create_table :friendsrequests do |t|
      t.references :sender, foreign_key: true
      t.references :friend, foreign_key: true

      t.timestamps
    end
  end
end
