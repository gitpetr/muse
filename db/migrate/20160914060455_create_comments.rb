class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :post, index: true, foreign_key: true
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :comments, :user_id
  end
end
