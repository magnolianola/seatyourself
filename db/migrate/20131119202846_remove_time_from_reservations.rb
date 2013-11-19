class RemoveTimeFromReservations < ActiveRecord::Migration
  def up
    remove_column :reservations, :time
  end
  def down
  	add_column :reservations, :time, :string
  end
end
