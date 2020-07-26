module Types
  class ReviewType < BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :body, String, null: true
    field :secret, String, null: true
    field :user, Types::UserType, null: false
  end
end
