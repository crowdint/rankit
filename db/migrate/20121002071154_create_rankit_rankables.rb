class CreateRankitRankables < ActiveRecord::Migration
  def change
    create_table :rankit_rankables do |t|
      t.integer :creator_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
