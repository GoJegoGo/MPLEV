class Package < ApplicationRecord

validates :name, presence: true, uniqueness: true
validates :package_type, presence: true
validates :initial_price, presence: true


has_many :students
belongs_to :assessment
has_many :votes

end
