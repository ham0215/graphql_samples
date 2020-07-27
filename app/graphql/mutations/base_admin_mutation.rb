module Mutations
  class BaseAdminMutation < BaseMutation
    def authorized?(args)
      raise GraphQL::ExecutionError, 'login required!!' unless context[:current_user]
      raise GraphQL::ExecutionError, 'permission denied!!' unless context[:current_user].admin?

      super
    end
  end
end
