module Resolvers
  class ReviewResolver < LoginRequiredResolver
    type Types::ReviewType, null: true

    argument :review_id, Int, required: true

    def resolve(review_id:)
      login_required!
      Review.find_by(id: review_id)
    end
  end
end
