class Student < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_one :teacher, through: :courses
end