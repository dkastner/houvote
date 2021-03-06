class Term < ApplicationRecord
  belongs_to :official, foreign_key: :official_slug, primary_key: :slug
  belongs_to :division, foreign_key: :division_slug, primary_key: :slug

  scope :current, -> { where('"terms"."start_date" < NOW() AND "terms"."end_date" > NOW()') }
end
