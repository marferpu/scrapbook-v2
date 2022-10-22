class Grade < ApplicationRecord
  has_many :grade_subjects
  has_many :subjects, through: :grade_subjects
  has_many :posts
  has_many :comments, through: :posts
  has_many :course_teachers
  has_many :classrooms
  
end
