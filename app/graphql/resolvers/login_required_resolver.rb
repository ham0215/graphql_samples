module Resolvers
  class LoginRequiredResolver < BaseResolver
    def authorized?(args)
      context[:current_user].present?
    end
  end
end
