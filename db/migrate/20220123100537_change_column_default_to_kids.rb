class ChangeColumnDefaultToKids < ActiveRecord::Migration[5.2]
  def change
    change_column_default :kids, :points, from: nil, to: "0"
  end
end
