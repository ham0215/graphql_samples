module Resolvers
  class BaseResolver < GraphQL::Schema::Resolver
    def login_required!
      # ログインしていなかったらraise
      raise GraphQL::ExecutionError, 'login required!!' unless context[:current_user]
    end
  end
end
