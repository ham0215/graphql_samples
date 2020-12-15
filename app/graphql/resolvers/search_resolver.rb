module Resolvers
  class SearchResolver < BaseResolver
    type Types::CharacterType.connection_type, null: false

    argument :text, String, required: false

    def resolve(text: nil)
      text.nil? ? Character.all : Character.where('name like ?', "%#{text}%")
    end
  end
end
