module Resolvers
  class ReviewResolver < BaseResolver
    type Types::ReviewType, null: false

    argument :review_id, Int, required: true

    def resolve(review_id:)
      Review.find review_id
    end
  end
end
