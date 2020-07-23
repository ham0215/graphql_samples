module Types
  class ReviewType < BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :body, AuthScalar, null: true
  end
end
