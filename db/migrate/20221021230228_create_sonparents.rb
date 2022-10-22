class CreateSonparents < ActiveRecord::Migration[7.0]
  def change
    create_table :sonparents do |t|
      t.references :user, null: false, foreign_key: true
      t.references :son, references: :users, foreign_key: { to_table: :users}
      t.timestamps
    end
  end
end
