class CreateRewardItems < ActiveRecord::Migration[5.2]
  def change
    create_table :reward_items do |t|
      t.integer :kid_id
      t.integer :reward_id
      t.boolean :reward_status, default: true

      t.timestamps
    end
  end
end
