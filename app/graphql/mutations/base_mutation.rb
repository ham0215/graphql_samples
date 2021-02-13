module Mutations
  class BaseMutation < GraphQL::Schema::Mutation
    null false
  end
=begin
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    argument_class Types::BaseArgument
    field_class Types::BaseField
    input_object_class InputObjects::BaseInputObject
    object_class Types::BaseObject
  end
=end
end
