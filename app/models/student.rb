class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, 
          :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { minimum: 5, maximum: 25 }
end
