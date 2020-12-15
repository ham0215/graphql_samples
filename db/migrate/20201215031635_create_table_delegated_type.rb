class CreateTableDelegatedType < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :char_type, null: false, limit: 10
      t.bigint :char_id, null: false

      t.timestamps
    end

    create_table :humans do |t|
      t.float :height, null: false

      t.timestamps
    end

    create_table :droids do |t|
      t.string :primary_function, null: false

      t.timestamps
    end

    create_table :starships do |t|
      t.float :length, null: false

      t.timestamps
    end
  end
end
