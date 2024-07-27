class CreateFares < ActiveRecord::Migration[6.1]
  def change
    create_table :fares do |t|
      t.references :employee, null: false, foreign_key: true
      t.date :date, null: false
      t.string :routeA, null: false
      t.string :routeB, null: false
      t.string :transportation, null: false
      t.integer :amount, null: false
      t.string :remarks, null: false
      t.timestamps
    end
  end
end
