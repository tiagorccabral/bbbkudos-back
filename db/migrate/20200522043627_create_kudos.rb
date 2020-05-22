class CreateKudos < ActiveRecord::Migration[6.0]
  def change
    create_table :kudos do |t|
      t.string :name
      t.integer :kudo_type

      t.timestamps
    end
  end
end
