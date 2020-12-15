class Character < ApplicationRecord
  delegated_type :char, types: %w[ Human Droid Starship ], dependent: :destroy
end
