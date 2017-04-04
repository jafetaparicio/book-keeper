class Book < ApplicationRecord
  validates :title, :picture_url, presence: true
end
