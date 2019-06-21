class Student < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  belongs_to :course
  has_one :teacher, through: :course
end
