class CreateMobileResolutions < ActiveRecord::Migration
  def change
    create_table :mobile_resolutions do |t|
      t.string :name

      t.timestamps
    end
  end
end
