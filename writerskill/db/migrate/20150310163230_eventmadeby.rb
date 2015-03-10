class Eventmadeby < ActiveRecord::Migration
  def change
    add_column :events, :organized_by, :string

  end
end
