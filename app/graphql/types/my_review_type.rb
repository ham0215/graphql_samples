module Types
  class MyReviewType < ReviewType
    def self.authorized?(object, context)
      raise GraphQL::ExecutionError, 'permission denied!!' if context[:current_user].id != object.user_id

      true
    end
  end
end
