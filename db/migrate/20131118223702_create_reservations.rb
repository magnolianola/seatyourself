class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :date
      t.string :time
      t.integer :number

      t.timestamps
    end
  end
end
