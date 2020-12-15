module Types
  class HumanType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :height, Float, null: false
  end
end
