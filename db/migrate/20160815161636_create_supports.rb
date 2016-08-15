class CreateSupports < ActiveRecord::Migration[5.0]
  def change
    create_table :supports do |t|
      t.string :name
      t.string :email
      t.string :department
      t.text :message
      t.string :mark

      t.timestamps
    end
  end
end
