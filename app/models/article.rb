class Article < ApplicationRecord
  has_rich_text :content
  validates_presence_of :title
  has_many :comments
end