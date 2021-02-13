module Errors
  class NotFoundError < GraphQL::ExecutionError
    def initialize(message = 'Not Found Error')
      super(message, options: options)
    end

    private

    def options
      { status: 404 }
    end
  end
end
