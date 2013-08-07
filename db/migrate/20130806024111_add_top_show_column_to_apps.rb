class AddTopShowColumnToApps < ActiveRecord::Migration
  def change
    add_column :apps, :top_show, :boolean, :default => false
  end
end
