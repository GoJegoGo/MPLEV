class Student < ApplicationRecord

has_one :class_catalog 
belongs_to :assessment
belongs_to :package

end
