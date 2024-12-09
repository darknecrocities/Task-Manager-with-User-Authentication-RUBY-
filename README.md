
# 📝 Ruby Task Manager 🚀

A simple command-line Ruby application that allows users to sign up, log in, and manage tasks. Users can create, update, view, and delete tasks. This application implements basic user authentication and file storage.

## Features ✨

- **User Authentication** 🔑 (Sign-up & Login)
- **CRUD Operations** 🛠️ for tasks (Create, Read, Update, Delete)
- **Task Persistence** 💾 via file storage
- **Basic Error Handling** ⚠️ and **Validation** ✅

## Prerequisites ⚙️

Ensure you have Ruby installed on your machine. You can download it from [Ruby's official website](https://www.ruby-lang.org/en/documentation/installation/).

To check if Ruby is installed, run the following command in your terminal:

```bash
ruby -v
```

## Packages to Install 📦

This application uses the `bcrypt` gem for password hashing. To install the required gems, follow these steps:

1. **Install the `bcrypt` gem** 💎

   Open your terminal and run:

   ```bash
   gem install bcrypt
   ```

2. **Verify installation of `bcrypt`** ✅

   After the gem is installed, you can verify by running:

   ```bash
   gem list bcrypt
   ```

3. **Optional: Bundler Setup (if using Gemfile)** 📂

   If you are using a **Gemfile** to manage dependencies, add the following line to your `Gemfile`:

   ```ruby
   gem 'bcrypt', '~> 3.1.7'
   ```

   Then, run:

   ```bash
   bundle install
   ```

## Project Structure 📁

The project is structured as follows:

```
task_manager/
│
├── app.rb          # Main application file
├── user.rb         # User class for authentication
├── task.rb         # Task class for CRUD operations
└── storage.rb      # File storage handling
```

- **`app.rb`**: The entry point for the application. It runs the task manager after user login.
- **`user.rb`**: Contains the `User` class responsible for user authentication (sign-up and login).
- **`task.rb`**: Contains the `Task` class for creating, updating, viewing, and deleting tasks.
- **`storage.rb`**: Manages file storage (for tasks and user data).

## How to Run the Application 🏃‍♂️

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/your-username/ruby-task-manager.git
   cd ruby-task-manager
   ```

2. Install the required packages:

   ```bash
   gem install bcrypt
   ```

   Or, if you're using Bundler:

   ```bash
   bundle install
   ```

3. Run the application:

   ```bash
   ruby app.rb
   ```

   This will start the application in your terminal. Follow the prompts to sign up, log in, and manage your tasks.

## Usage 👨‍💻

### Sign Up 📝

1. Choose option `1` to sign up.
2. Enter your desired username and password.

### Log In 🔐

1. Choose option `2` to log in.
2. Enter your username and password.
3. Once logged in, you'll have access to task management options.

### Task Management 🗂️

After logging in, you can:

- **View Tasks** 👀 (Option 1)
- **Create a Task** ➕ (Option 2)
- **Update a Task** ✏️ (Option 3)
- **Delete a Task** 🗑️ (Option 4)
- **Log Out** 🚪 (Option 5)

Follow the prompts for each option.

### Example Run 🎮

```bash
Welcome to Task Manager! 🎉

Please choose an option:
1. Sign Up 📝
2. Log In 🔑
3. Exit ❌
1
Enter username: johndoe
Enter password: password123
Account created successfully! ✅

Please choose an option:
1. Sign Up 📝
2. Log In 🔑
3. Exit ❌
2
Enter username: johndoe
Enter password: password123
Logged in successfully! 🎉

Task Manager:
1. View Tasks 👀
2. Create Task ➕
3. Update Task ✏️
4. Delete Task 🗑️
5. Log Out 🚪
1
No tasks available. 📂

Task Manager:
1. View Tasks 👀
2. Create Task ➕
3. Update Task ✏️
4. Delete Task 🗑️
5. Log Out 🚪
2
Enter task title: Buy groceries 🛒
Enter task description: Milk, eggs, and bread 🥛🥚🍞
Task created! ✅

Task Manager:
1. View Tasks 👀
2. Create Task ➕
3. Update Task ✏️
4. Delete Task 🗑️
5. Log Out 🚪
```

## License 📝

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

---

**Note**: This application uses basic file storage (in `tasks.txt` and `users.txt`) to persist data. For production-level applications, consider integrating a proper database like PostgreSQL or MySQL.

---

## Troubleshooting ⚠️

### Issue: `cannot load such file -- bcrypt (LoadError)`
**Solution**: Ensure that the `bcrypt` gem is installed by running:

```bash
gem install bcrypt
```

If you're using Bundler, run:

```bash
bundle install
```

---

Thank you for using Ruby Task Manager! 😄🚀

## Created by: Arron Kian Parejas
## Note: If you use this project, please credit the owner. Thank you! 😊
