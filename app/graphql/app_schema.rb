class AppSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)

  use GraphQL::Execution::Interpreter
  use GraphQL::Analysis::AST

  use GraphQL::Pagination::Connections

  def self.unauthorized_object(error)
    raise GraphQL::ExecutionError, error.message
  end
end
