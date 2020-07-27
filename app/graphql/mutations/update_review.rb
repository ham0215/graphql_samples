module Mutations
  class UpdateReview < BaseAdminMutation
    argument :review_id, Int, required: true
    argument :title, String, required: false
    argument :body, String, required: false

    type Types::ReviewType

    def resolve(review_id:, title: nil, body: nil)
      review = Review.find review_id
      review.title = title if title
      review.body = body if body
      review.save!

      review
    end
  end
end
