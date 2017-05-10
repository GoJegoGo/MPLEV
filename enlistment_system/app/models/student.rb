class Student < ApplicationRecord

belongs_to :class_catalog 
has_many :assessments
    accepts_nested_attributes_for :assessments
belongs_to :package

end
