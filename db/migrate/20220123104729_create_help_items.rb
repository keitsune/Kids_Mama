class CreateHelpItems < ActiveRecord::Migration[5.2]
  def change
    create_table :help_items do |t|
      t.integer :kid_id
      t.integer :help_id
      t.boolean :help_status, default: true

      t.timestamps
    end
  end
end
