module Queries
  class AllLinks < BaseQuery
    type [Types::LinkType], null: false
    description 'Query all Links'

    argument :description, String, required: false, default_value: nil

    def resolve(description:)
      return Link.all unless description

      Link.where('description like ?', "%#{description}%")
    end
  end
end
