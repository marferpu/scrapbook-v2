class Post < ApplicationRecord
  belongs_to :grade
  belongs_to :user
  belongs_to :subject
  has_many :comments
  has_many_attached :documents
end
