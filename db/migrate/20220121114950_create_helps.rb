class CreateHelps < ActiveRecord::Migration[5.2]
  def change
    create_table :helps do |t|
      t.string :name
      t.string :contents
      t.integer :get_point
      t.integer :admin_id
      t.timestamps
    end
  end
end
