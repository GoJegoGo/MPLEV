class Package < ApplicationRecord

validates :name, presence: true, uniqueness: true
validates :package_type, presence: true
validates :initial_price, presence: true

has_many :assessments
    accepts_nested_attributes_for :assessments
has_many :students

end
