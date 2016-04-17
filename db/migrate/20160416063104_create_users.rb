class CreateUsers < ActiveRecord::Migration
  acts_in_relation with: :follow
end

class Follow < ActiveRecord::Base
  acts_in_relation :action, source: :user, target: :user
end

  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps null: false

      t.index :email, unique: true #
    end
  end