# When the program starts, ask user name
# Create a new list for a new user
# When a new list is created, it is called by the name of the user

# 1. View existing list
# 2. Create a new list for a new user
# 3. Add a new task to the list
# 4. Remove a task from the list

require_relative 'list'

def greeting
  puts "Hi!"
  puts "Welcome to the To Do List app :)"
  puts "What's your name?"
  print "> "
end

def menu
  puts "Please choose an option:"
  puts "1: View the to-do list"
  puts "2: Add a task to the list"
  puts "3: Remove a task from the list"
  puts "4: Quit"
  puts
  print "> "
end


# -------------------------------------
# main body
# -------------------------------------

system 'clear'
greeting

name = gets.strip.downcase

todo = List.new(name)

loop do
  menu

  case gets.to_i
  when 1
    todo.view
  when 2
    todo.add
  when 3
    todo.remove
  when 4
    exit   
  end    
end
