class GradeSubject < ApplicationRecord
  belongs_to :grade
  belongs_to :subject
end
