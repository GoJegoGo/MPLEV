class Package < ApplicationRecord


has_many :students
accepts_nested_attributes_for :students
belongs_to :assessment
has_many :votes



end
