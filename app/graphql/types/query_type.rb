module Types
  class QueryType < Types::BaseObject
    field :all_links, resolver: Queries::AllLinks

    field :reviews, Types::ReviewType.connection_type, null: true do
      description 'select reviews'
    end
    def reviews
      Review.all
    end
  end
end
