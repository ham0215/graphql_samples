class UserOrganization < ApplicationRecord
  belongs_to :user
  belongs_to :organizations
end
