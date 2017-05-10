class Payment < ApplicationRecord
    has_many :payments
    belongs_to :student
end
