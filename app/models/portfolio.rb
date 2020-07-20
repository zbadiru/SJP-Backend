class Portfolio < ApplicationRecord
    belongs_to :user
    has_many :photosoots
    has_many :images, through: :photosoots
end
