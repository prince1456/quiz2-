class SetDefualtValueForMark < ActiveRecord::Migration[5.0]
  def change
    change_column :supports, :mark :string, :default => "undone"
  end
end
