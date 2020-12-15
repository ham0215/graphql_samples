module Resolvers
  class SearchResolver < BaseResolver
    type Types::CharacterType.connection_type, null: false

    argument :text, String, required: false

    def resolve(text: nil)
      chars = Character.all
      chars = chars.where('name like ?', "%#{text}%") if text
      chars.preload(char: :character)
    end
  end
end
