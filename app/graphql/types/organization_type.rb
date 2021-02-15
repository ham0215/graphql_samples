module Types
  class OrganizationType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :user_organizations, UserOrganizationType.connection_type, null: false
  end
end
