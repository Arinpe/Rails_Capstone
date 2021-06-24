class CreateOpinions < ActiveRecord::Migration[6.0]
  def change
    create_table :opinions do |t|
      t.integer :author_id, null: false, class_name: 'User'
      t.string :text, null: false

      t.timestamps
    end
  end
end
