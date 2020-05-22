class AddSenderIdToUserKudos < ActiveRecord::Migration[6.0]
  def change
    add_column :user_kudos, :sender_id, :bigint, null: false
  end
end
