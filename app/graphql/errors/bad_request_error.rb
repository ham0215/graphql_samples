module Errors
  class BadRequestError < GraphQL::ExecutionError
    def initialize(message = 'Bad Request Error')
      super(message, options: options)
    end

    private

    def options
      { status: 400 }
    end
  end
end
