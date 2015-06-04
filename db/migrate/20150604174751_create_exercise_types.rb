class CreateExerciseTypes < ActiveRecord::Migration
  def change
    create_table :exercise_types do |t|
      t.string :name
      t.integer :ex_perform_id

      t.timestamps null: false
    end
  end
end
