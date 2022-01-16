class AddPointsToKids < ActiveRecord::Migration[5.2]
  def change
    add_column :kids, :points, :integer
    add_column :kids, :image_id, :string
    add_column :kids, :is_deleted, :boolean, default: false
  end
end
