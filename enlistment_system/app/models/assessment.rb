class Assessment < ApplicationRecord

    validates_length_of :announcement, :minimum => 0, :maximum => 65535, :allow_blank => true

    belongs_to :student    
    belongs_to :package
    belongs_to :class_catalog
    belongs_to :period
    has_many :payments

end
