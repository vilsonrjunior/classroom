class Student < ApplicationRecord

devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  has_one :course
  has_one :teacher, through: :course

  # belongs_to :parent
  # belongs_to :course
  # has_many :lessons
  # has_one :teacher, through: :course

  # uncomment lines above when models are ready
end
