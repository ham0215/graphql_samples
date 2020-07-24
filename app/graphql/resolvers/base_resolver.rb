module Resolvers
  class BaseResolver < GraphQL::Schema::Resolver
    def login_required!
      # ログインしていなかったらraise
      raise unless context[:current_user]
    end
  end
end
