class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.integer :lbs
      t.date :weigh_date

      t.timestamps null: false
    end
  end
end
