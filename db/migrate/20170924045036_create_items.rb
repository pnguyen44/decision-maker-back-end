class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.boolean :mark
      t.references :list, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
