class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.text :description
      t.references :category

      t.timestamps
    end
    add_index :apps, :category_id
  end
end
