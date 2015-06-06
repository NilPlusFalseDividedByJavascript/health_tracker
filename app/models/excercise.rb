class Excercise < ActiveRecord::Base
  belongs_to :exercise_types

  def exercise_type_name
    stuff =ExerciseType.find_by_id(self.excercise_type_id)

    stuff.name
  end


  def self.current_month
    start = Time.now.beginning_of_month
    stop = Time.now.end_of_month
    self.all.select {|e| e.created_at >= start && e.created_at <= stop}
  end

  def self.total
  # self.all.reduce(0) {|sum, t| sum + t.steps_taken}
  self.current_month.sum{|t| t.cal_burn }
  end




end
