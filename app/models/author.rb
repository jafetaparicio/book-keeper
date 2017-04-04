class Author < ApplicationRecord
    validates :last_name, :picture_url, presence: true
end
