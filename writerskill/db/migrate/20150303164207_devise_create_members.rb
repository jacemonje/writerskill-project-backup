class DeviseCreateMembers < ActiveRecord::Migration
  def change
    create_table(:members) do |t|
      ## Database authenticatable
      t.string :idnumber
      t.string :firstname
      t.string :middleinitial
      t.string :lastname
      t.string :nickname
      t.integer :year
      t.string :course
      t.string :phone
      t.text :address
      t.date :birthday
      t.string :emergency_person
      t.string :emergency_phone
      t.string :fb_url
      t.string :member_status
      t.string :member_type
      t.integer :points


      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps
    end

    add_index :members, :email,                unique: true
    add_index :members, :reset_password_token, unique: true
    # add_index :members, :confirmation_token,   unique: true
    # add_index :members, :unlock_token,         unique: true
  end
end
