class Sonparent < ApplicationRecord
  belongs_to :son, class_name: "User"
  belongs_to :user
end
