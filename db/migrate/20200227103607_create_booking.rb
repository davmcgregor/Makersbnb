class CreateBooking < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |b|
      b.datetime :date_start
      b.datetime :date_end
      b.references :users, foreign_key: true
      b.references :spaces, foreign_key: true
    end
  end
end
