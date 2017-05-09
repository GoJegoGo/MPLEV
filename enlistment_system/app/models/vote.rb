class Vote < ApplicationRecord
    belongs_to :student
    belongs_to :package
    
end
