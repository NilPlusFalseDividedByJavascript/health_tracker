class CreateExcercises < ActiveRecord::Migration
  def change
    create_table :excercises do |t|
      t.integer :cal_burn
      t.date :burn_date

      t.timestamps null: false
    end
  end
end
