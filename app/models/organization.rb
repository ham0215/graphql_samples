class Organization < ApplicationRecord
  validates :name, presence: true
  has_many :user_organizations

  has_many :users, through: :user_organizations
end
