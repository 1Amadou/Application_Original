class AddDefaultAdminUser < ActiveRecord::Migration[6.1]
  def up
    User.create!(
      email: 'admin@example.com',
      password: 'password123',
      admin: true
    )
  end

  def down
    User.find_by(email: 'admin@example.com').destroy
  end
end
