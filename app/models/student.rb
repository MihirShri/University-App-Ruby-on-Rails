class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, 
          :recoverable, :rememberable, :validatable

  has_many :student_courses
  has_many :courses, through: :student_courses

  validates :name, presence: true, length: { minimum: 5, maximum: 25 }
end
