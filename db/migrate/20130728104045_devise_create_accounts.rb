class DeviseCreateAccounts < ActiveRecord::Migration
  def change
    create_table(:accounts) do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :encrypted_password, null: false, default: ""
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.integer :sign_in_count, default: 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string :current_sign_in_ip
      t.string :last_sign_in_ip
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string :unconfirmed_email
      t.integer :failed_attempts, default: 0
      t.string :unlock_token
      t.datetime :locked_at
      t.string :provider
      t.string :uid
      t.timestamps
    end

    add_index :accounts, :email, unique: true
    add_index :accounts, :username, unique: true
    add_index :accounts, :reset_password_token, unique: true
    add_index :accounts, :confirmation_token, unique: true
    add_index :accounts, :unlock_token, unique: true
  end
end
