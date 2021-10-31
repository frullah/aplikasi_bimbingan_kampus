class Post < ApplicationRecord
  self.ignored_columns =[:body]

  has_rich_text :content

  validates :title, presence: true
end
