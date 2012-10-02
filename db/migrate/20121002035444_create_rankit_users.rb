class CreateRankitUsers < ActiveRecord::Migration
  def change
    create_table :rankit_users do |t|
      t.string :email
      t.string :encrypted_password

      t.timestamps
    end
  end
end
