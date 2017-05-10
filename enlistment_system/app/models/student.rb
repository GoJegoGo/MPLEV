class Student < ApplicationRecord

    validates :name, presence: true, uniqueness: true
    validates :contact_number, presence: true
    validates :email_ad, presence: true

belongs_to :class_catalog 
has_one :assessment
    # accepts_nested_attributes_for :package, :period, :class_catalog, allow_destroy: true
belongs_to :package
has_many :payments

end
