class Weight < ActiveRecord::Base

  validates :weigh_date, uniqueness: true

  #so my problem is that this is only checking date physically created, not the date the
  #user puts into the table
  def self.current_month
    start = Time.now.beginning_of_month
    stop = Time.now.end_of_month
    self.all.select {|e| e.created_at >= start && e.created_at <= stop}
  end

  def self.total
  self.current_month.count{|t| t.weight }
  end
end
