class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :username, limit: 20, null: false

      t.timestamps null: false
    end

    add_index :accounts, :username, unique: true
  end
end
