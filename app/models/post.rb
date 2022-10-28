class Post < ApplicationRecord
  belongs_to :grade
  belongs_to :user
  belongs_to :subject
  has_many :comments
  has_rich_text :content
  has_many_attached :documents

  include PgSearch::Model
  pg_search_scope :search_by_title_and_type_activity_and_description,
    against: [ :title, :type_activity, :description ],
    associated_against: {
      grade: [ :name ],
      subject: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
