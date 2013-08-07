class CreatePortraits < ActiveRecord::Migration
  def change
    create_table :portraits do |t|
      t.string :resolution

      t.timestamps
    end
  end
end
