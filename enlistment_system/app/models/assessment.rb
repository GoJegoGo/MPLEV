class Assessment < ApplicationRecord

has_many :class_catalogs
has_many :packages
has_many :students
has_many :periods
end
