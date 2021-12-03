class Article < ApplicationRecord
    validates :title, :url, :imageUrl, :newSite, :publishedAt, presence: true
end
