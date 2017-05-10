class ClassCatalog < ApplicationRecord

has_many :students
has_many :assessments
    accepts_nested_attributes_for :assessments

end
