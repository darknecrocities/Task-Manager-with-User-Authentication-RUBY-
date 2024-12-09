class Storage
    def self.init_files
      unless File.exist?('users.txt')
        File.open('users.txt', 'w') {}
      end
      unless File.exist?('tasks.txt')
        File.open('tasks.txt', 'w') {}
      end
    end
  end
  