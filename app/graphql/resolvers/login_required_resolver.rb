module Resolvers
  class LoginRequiredResolver < BaseResolver
    def authorized?(args)
      raise GraphQL::ExecutionError, 'login required!!' unless context[:current_user].present?

      super
    end
  end
end
