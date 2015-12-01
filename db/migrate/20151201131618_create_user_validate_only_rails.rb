class CreateUserValidateOnlyRails < ActiveRecord::Migration
  def change
    create_table :user_validate_only_rails do |t|
      t.string :name
      t.string :password

      t.timestamps null: false
    end
  end
end
