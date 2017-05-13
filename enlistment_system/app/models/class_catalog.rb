class ClassCatalog < ApplicationRecord

    attr_accessor :slots_taken
    validates_length_of :venue_address, :minimum => 5, :maximum => 100, :allow_blank => true

    has_many :students, through: :assessments
    has_many :assessments
        accepts_nested_attributes_for :assessments

    def to_s
        "#{venue_address}: #{time_start} - #{time_end}"
    end

    def slots_taken
        self.students.count
    end

end
