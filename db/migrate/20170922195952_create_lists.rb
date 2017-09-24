class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :name, null: false, index: { unique: true }
      t.references :user, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
