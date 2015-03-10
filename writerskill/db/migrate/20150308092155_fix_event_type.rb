class FixEventType < ActiveRecord::Migration
  def change
    rename_column :events, :type, :eventclass

  end
end
