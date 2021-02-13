module Mutations
  class CreateNewUser < BaseNewMutation
    null false

    argument :name, String, required: true
    argument :email, String, required: true

    type Types::UserType

    def resolve(name:, email:)
      User.create!(
        name: name,
        email: email,
      )
    end
  end
end
