class Article < ApplicationRecord
validates :title, presence: true, length: { minimum: 5 }
validates :body, presence: true, length: { minimum: 10 }

paginates_per 1

scope :desc_order, -> { order(created_at: :desc) }
scope :excluded_ids, ->(ids) { where.not(id: ids) }
end