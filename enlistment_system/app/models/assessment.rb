class Assessment < ApplicationRecord

belongs_to :student

belongs_to :payment
belongs_to :package
belongs_to :class_catalog
belongs_to :period

end
