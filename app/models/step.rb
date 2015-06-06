class Step < ActiveRecord::Base


  def self.current_month
    start = Time.now.beginning_of_month
    stop = Time.now.end_of_month
    self.all.select {|e| e.created_at >= start && e.created_at <= stop}
  end

  def self.total
  # self.all.reduce(0) {|sum, t| sum + t.steps_taken}
  self.current_month.sum{|t| t.steps_taken }
  end


  # def self.current_debits
  # self.current_month.sum {|e| e.debits}
  # end


end
