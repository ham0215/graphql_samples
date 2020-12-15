module Types
  class CharacterType < Types::BaseUnion
    possible_types Types::HumanType, Types::DroidType, Types::StarshipType

    def self.resolve_type(object, context)
      if object.human?
        Types::HumanType
      elsif object.droid?
        Types::DroidType
      elsif object.starship?
        Types::Starship
      end
    end
  end
end
