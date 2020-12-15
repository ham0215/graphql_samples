module Char
  extend ActiveSupport::Concern

  included do
    has_one :character, as: :char, touch: true
  end
end
