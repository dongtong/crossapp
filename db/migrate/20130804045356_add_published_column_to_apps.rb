class AddPublishedColumnToApps < ActiveRecord::Migration
  def change
    add_column :apps, :published, :boolean, :default => false
  end
end
