class Subject < ApplicationRecord
  has_many :grade_subjects
  has_many :grades, through: :grade_subjects
  
end
