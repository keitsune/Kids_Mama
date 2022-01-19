class CreateRewards < ActiveRecord::Migration[5.2]
  def change
    create_table :rewards do |t|
      t.string :title
      t.text :message
      t.integer :total_point
      t.string :image_id

      t.timestamps
    end
  end
end
