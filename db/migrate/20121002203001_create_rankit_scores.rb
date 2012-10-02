class CreateRankitScores < ActiveRecord::Migration
  def change
    create_table :rankit_scores do |t|
      t.integer :ranker_id
      t.integer :rankable_id
      t.integer :score

      t.timestamps
    end
  end
end
