class JoinTable < ApplicationRecord
    belongs_to :order
    belongs_to :merchandise
end
