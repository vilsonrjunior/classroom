class Teacher < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :courses, foreign_key: :teacher_id
  has_many :students, through: :courses
end
