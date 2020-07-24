module Types
  class QueryType < Types::BaseObject
    field :all_links, resolver: Queries::AllLinks

    field :review, resolver: Resolvers::Review

    field :reviews, Types::ReviewType.connection_type, null: true do
      description 'select reviews'
    end
    def reviews
      Review.all.order(id: :desc)
    end
  end
end
