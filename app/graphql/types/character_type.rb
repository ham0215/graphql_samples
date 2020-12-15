module Types
  class CharacterType < Types::BaseUnion
    possible_types Types::HumanType, Types::DroidType, Types::StarshipType

    def self.resolve_type(object, context)
      if object.human?
        [Types::HumanType, object.human]
      elsif object.droid?
        [Types::DroidType, object.droid]
      elsif object.starship?
        [Types::StarshipType, object.starship]
      end
    end
  end
end
