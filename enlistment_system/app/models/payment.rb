class Payment < ApplicationRecord
    validates_length_of :number_of_installment, :minimum => 1, :maximum => 1, presence: true
    
    belongs_to :assessment

    
    belongs_to :student
end
