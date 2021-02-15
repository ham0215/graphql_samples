module Types
  class UserOrganizationType < BaseObject
    field :id, ID, null: false
    field :user, UserType, null: false
    field :organization, OrganizationType, null: false
  end
end
