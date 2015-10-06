class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.integer :listing_id
      t.string :subject
      t.text :body
      t.datetime :read_at
      t.datetime :sender_deleted_at
      t.datetime :recipient_deleted_at

      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
