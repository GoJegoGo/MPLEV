class Student < ApplicationRecord

belongs_to :class_catalog 
has_one :assessment
    # accepts_nested_attributes_for :package, :period, :class_catalog, allow_destroy: true
belongs_to :package
has_many :payments

end
