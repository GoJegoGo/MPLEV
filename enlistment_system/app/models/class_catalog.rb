class ClassCatalog < ApplicationRecord

has_many :students
belongs_to :assessment

end
