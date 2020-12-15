module Char
  extend ActiveSupport::Concern

  included do
    has_one :character, as: :char, touch: true, dependent: :destroy
  end
end
