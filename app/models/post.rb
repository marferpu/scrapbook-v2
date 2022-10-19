class Post < ApplicationRecord
  belongs_to :grade
  belongs_to :user
  has_many_attached :documents
end
