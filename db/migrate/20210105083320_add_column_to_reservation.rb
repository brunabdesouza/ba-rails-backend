class AddColumnToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :column, :string
  end
end
