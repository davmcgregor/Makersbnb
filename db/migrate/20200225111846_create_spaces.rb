class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.datetime :date_start
      t.datetime :date_end
      t.references :user, foreign_key: true
    end
  end
end
