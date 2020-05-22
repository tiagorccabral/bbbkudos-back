class CreateUserKudos < ActiveRecord::Migration[6.0]
  def change
    create_table :user_kudos do |t|
      t.references :user, null: false, foreign_key: true
      t.references :kudo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
