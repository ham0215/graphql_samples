module Types
  class OrganizationType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :users, UserType.connection_type, null: false
  end
end
