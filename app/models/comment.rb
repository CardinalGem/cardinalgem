class Comment < ApplicationRecord
  belongs_to :article
  has_rich_text :content
end
