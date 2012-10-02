class CreateRankitComments < ActiveRecord::Migration
  def change
    create_table :rankit_comments do |t|
      t.integer :rankable_id
      t.integer :user_id
      t.string :user_email
      t.text :comment

      t.timestamps
    end
  end
end
