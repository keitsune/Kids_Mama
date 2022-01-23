class CreateWantRewards < ActiveRecord::Migration[5.2]
  def change
    create_table :want_rewards do |t|
      t.integer :kid_id
      t.integer :reward_id

      t.timestamps
    end
  end
end
