class CreateFollowings < ActiveRecord::Migration[6.0]
  def change
    create_table :followings do |t|
      t.integer :follower_id, null: false, class_name: 'User'
      t.integer :followed_id, null: false, class_name: 'User'

      t.timestamps
    end
  end
end
