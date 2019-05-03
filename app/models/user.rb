class User < ApplicationRecord
  has_many :orders
  validates :identification_document, presence: true,
                                      uniqueness: { case_sensitive: false }
  accepts_nested_attributes_for :orders
  validates_associated :orders
end
