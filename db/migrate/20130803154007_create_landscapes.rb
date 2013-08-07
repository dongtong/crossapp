class CreateLandscapes < ActiveRecord::Migration
  def change
    create_table :landscapes do |t|
      t.string :resolution

      t.timestamps
    end
  end
end
