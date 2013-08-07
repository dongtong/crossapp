class CreateMobileDevices < ActiveRecord::Migration
  def change
    create_table :mobile_devices do |t|
      t.string :name

      t.timestamps
    end
  end
end
