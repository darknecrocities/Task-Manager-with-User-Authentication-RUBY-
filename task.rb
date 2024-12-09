class Task
    attr_accessor :title, :description, :status
  
    def initialize(title, description)
      @title = title
      @description = description
      @status = 'pending'
    end
  
    def self.create_task(title, description)
      task = Task.new(title, description)
      File.open('tasks.txt', 'a') do |file|
        file.puts("#{task.title},#{task.description},#{task.status}")
      end
      puts "Task created!"
    end
  
    def self.view_tasks
      tasks = File.read('tasks.txt').split("\n")
      tasks.each_with_index do |task, index|
        title, description, status = task.split(',')
        puts "#{index + 1}. #{title} - #{description} (Status: #{status})"
      end
    end
  
    def self.update_task(index, title, description, status)
      tasks = File.read('tasks.txt').split("\n")
      tasks[index] = "#{title},#{description},#{status}"
      File.write('tasks.txt', tasks.join("\n"))
      puts "Task updated!"
    end
  
    def self.delete_task(index)
      tasks = File.read('tasks.txt').split("\n")
      tasks.delete_at(index)
      File.write('tasks.txt', tasks.join("\n"))
      puts "Task deleted!"
    end
  end
  