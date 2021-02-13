module Mutations
  class CreateNewUser < BaseNewMutation
    null false

    argument :name, String, required: true
    argument :email, String, required: true

    field :user, Types::UserType, null: false

    def resolve(name:, email:)
      { user: User.create!( name: name, email: email) }
    end
  end
end
