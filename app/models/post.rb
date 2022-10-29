class Post < ApplicationRecord
  belongs_to :grade
  belongs_to :user
  belongs_to :subject
  has_many :comments
  has_rich_text :content
  has_many_attached :documents

  include PgSearch::Model
  # pg_search_scope :search_by_title_and_type_activity_and_description_and_content,
  #   against: [:title, :type_activity, :description, :content],
  #   associated_against: {
  #     rich_text_content: [:body],

  #     grade: [:name],
  #     subject: [:name]
  #   },
  #   using: {
  #     tsearch: { prefix: true }
  #   }
  pg_search_scope :global_search,
  against: [:title, :type_activity, :description],
  associated_against: {
    rich_text_content: [:body]
  }
end
