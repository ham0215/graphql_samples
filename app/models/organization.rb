class Organization < ApplicationRecord
  validates :name, presence: true
  has_many :user_organizations
end
