class Zombie < ActiveRecord::Base
  has_many :vehicles
  
  validates :health,
    numericality: { message: "ain't no number, foo" },
    inclusion: { in: 0..100, message: "must be between 0 and 100" }

end
