class Lesson < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true

  validates :lesson_number, :presence => true

end
