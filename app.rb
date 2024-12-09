require_relative 'user'
require_relative 'task'
require_relative 'storage'

class TaskManager
  def initialize
    Storage.init_files
  end

  def run
    puts "Welcome to Task Manager!"
    while true
      puts "\nPlease choose an option:"
      puts "1. Sign Up"
      puts "2. Log In"
      puts "3. Exit"
      print "Please choose an option: "
      choice = gets.chomp.to_i

      case choice
      when 1
        sign_up
      when 2
        log_in
      when 3
        exit
      else
        puts "Invalid option. Please try again."
      end
    end
  end

  private

  def sign_up
    print "Enter username: "
    username = gets.chomp
    print "Enter password: "
    password = gets.chomp
    User.create_account(username, password)
  end

  def log_in
    print "Enter username: "
    username = gets.chomp
    print "Enter password: "
    password = gets.chomp

    if User.login(username, password)
      puts "Logged in successfully!"
      task_manager
    else
      puts "Invalid credentials!"
    end
  end

  def task_manager
    while true
      puts "\nTask Manager:"
      puts "1. View Tasks"
      puts "2. Create Task"
      puts "3. Update Task"
      puts "4. Delete Task"
      puts "5. Log Out"
      print " Select Task Manager option: "
      choice = gets.chomp.to_i

      case choice
      when 1
        Task.view_tasks
      when 2
        create_task
      when 3
        update_task
      when 4
        delete_task
      when 5
        puts "Logged out!"
        break
      else
        puts "Invalid option. Please try again."
      end
    end
  end

  def create_task
    print "Enter task title: "
    title = gets.chomp
    print "Enter task description: "
    description = gets.chomp
    Task.create_task(title, description)
  end

  def update_task
    Task.view_tasks
    print "Enter the task number to update: "
    task_index = gets.chomp.to_i - 1
    print "Enter new task title: "
    title = gets.chomp
    print "Enter new task description: "
    description = gets.chomp
    print "Enter new task status: "
    status = gets.chomp
    Task.update_task(task_index, title, description, status)
  end

  def delete_task
    Task.view_tasks
    print "Enter the task number to delete: "
    task_index = gets.chomp.to_i - 1
    Task.delete_task(task_index)
  end
end

# Run the application
app = TaskManager.new
app.run
