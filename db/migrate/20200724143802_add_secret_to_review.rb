class AddSecretToReview < ActiveRecord::Migration[6.0]
  def change
    change_table :reviews do |t|
      t.string :secret, null: true, after: :body
    end
  end
end
