class AddFirmwareVersionAndResolutionColumnsToApps < ActiveRecord::Migration
  def change
    add_column :apps, :firmware_version, :string
    add_column :apps, :resolution, :string
  end
end
