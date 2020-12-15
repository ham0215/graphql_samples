module Types
  class StarshipType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :length, Float, null: false
  end
end
