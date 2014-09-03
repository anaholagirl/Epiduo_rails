class Lesson < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true
  validates :lesson_number, :presence => true, :uniqueness => true
  validates :lesson_number, numericality: { only_integer: true }

  belongs_to :section
end
