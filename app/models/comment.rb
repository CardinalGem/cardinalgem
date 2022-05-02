class Comment < ApplicationRecord
  belongs_to :article
  has_rich_text :content
  validates_presence_of :content
end
