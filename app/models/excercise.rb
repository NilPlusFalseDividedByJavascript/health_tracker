class Excercise < ActiveRecord::Base
  belongs_to :exercise_types

  def exercise_type_name
    stuff =ExerciseType.find_by_id(self.excercise_type_id)
    p stuff
    stuff.name
  end
end
