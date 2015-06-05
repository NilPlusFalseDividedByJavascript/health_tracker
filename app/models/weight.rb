class Weight < ActiveRecord::Base
  validates :weigh_date, uniqueness: true
end
