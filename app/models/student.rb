class Student < ApplicationRecord

devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  belongs_to :parent
  belongs_to :course
  has_many :lessons
  has_one :teacher, through: :course


end
