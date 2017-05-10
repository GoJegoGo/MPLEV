class Period < ApplicationRecord

has_many :class_catalogs
has_many :assessments
    accepts_nested_attributes_for :assessments

end
