module Resolvers
  class UserResolver < BaseResolver
    type Types::UserType, null: true

    argument :user_id, Int, required: true

    def resolve(user_id:)
      User.preload(user_organizations: :organization).find_by(id: user_id)
    end
  end
end
