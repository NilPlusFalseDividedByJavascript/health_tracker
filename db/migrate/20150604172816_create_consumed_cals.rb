class CreateConsumedCals < ActiveRecord::Migration
  def change
    create_table :consumed_cals do |t|
      t.integer :cal_consume
      t.date :consume_date

      t.timestamps null: false
    end
  end
end
