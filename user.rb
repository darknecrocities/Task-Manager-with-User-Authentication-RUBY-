require 'bcrypt'

class User
  attr_accessor :username, :password

  def initialize(username, password)
    @username = username
    @password = password
  end

  def self.create_account(username, password)
    encrypted_password = BCrypt::Password.create(password)
    File.open('users.txt', 'a') do |file|
      file.puts("#{username},#{encrypted_password}")
    end
    puts "Account created successfully!"
  end

  def self.login(username, password)
    user_data = File.read('users.txt').split("\n")
    user_data.each do |data|
      stored_username, stored_password = data.split(',')
      if stored_username == username && BCrypt::Password.new(stored_password) == password
        return true
      end
    end
    false
  end
end
