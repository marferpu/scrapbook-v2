class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :sonparents
  has_many :sons, through: :sonparents
  has_one_attached :photo
  has_one :classroom
  has_one :grade, through: :classroom
  has_many :course_teachers
  has_many :classrooms
  has_many :comments
  has_many :posts
  has_many :grades, through: :course_teachers
  has_many :subjects, through: :posts
  enum :role, { admin: 0, teacher: 1, parent: 2, student: 3, undefine: 4 }, suffix: true

  def fullname
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
