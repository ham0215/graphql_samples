module Types
  class DroidType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :primary_function, String, null: false
  end
end
