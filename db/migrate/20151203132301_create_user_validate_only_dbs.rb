class CreateUserValidateOnlyDbs < ActiveRecord::Migration
  def change
    create_table :user_validate_only_dbs do |t|
      t.string :name, limit: 20
      t.string :password

      t.timestamps null: false
    end
  end
end
