class Order < ApplicationRecord
    has_many :join_tables
    has_many :merchandises, through: :join_table
end
