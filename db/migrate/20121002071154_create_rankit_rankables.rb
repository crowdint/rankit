class CreateRankitRankables < ActiveRecord::Migration
  def change
    create_table :rankit_rankables do |t|
      t.integer :creator_id
      t.string :name
      t.text :description
      t.integer :average_score

      t.timestamps
    end
  end
end
