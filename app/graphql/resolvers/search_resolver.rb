module Resolvers
  class SearchResolver < BaseResolver
    type Types::CharacterType, null: false

    argument :id, Int, required: true

    def resolve(id:)
      Character.find_by(id: id)
    end
  end
end
