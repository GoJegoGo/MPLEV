class Payment < ApplicationRecord
    
    validates_length_of :number_of_installment, :minimum => 1, :maximum => 1, presence: true
    
    has_many :payments
    belongs_to :student
end
