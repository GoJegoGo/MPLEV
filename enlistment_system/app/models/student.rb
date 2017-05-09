class Student < ApplicationRecord
belongs_to :class_catalog
belongs_to :assessment
belongs_to :package

end
