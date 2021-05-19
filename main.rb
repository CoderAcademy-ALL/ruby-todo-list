# When the program starts, ask user name
# Create a new list for a new user
# When a new list is created, it is called by the name of the user

# 1. View existing list
# 2. Create a new list for a new user
# 3. Add a new task to the list
# 4. Remove a task from the list

require_relative 'list'
require "tty-prompt"

prompt = TTY::Prompt.new

def greeting
  puts "Hi!"
  puts "Welcome to the To Do List app :)"
  puts "What's your name?"
  print "> "
end

def menu(prompt)
  choices = [
  {name: "View the to-do list", value: 1},
  {name: "Add a task to the list", value: 2},
  {name: "Remove a task from the list", value: 3},
  {name: "Quit", value: 4}
  ]

  prompt.select("Please choose an option:", choices)
end


# -------------------------------------
# main body
# -------------------------------------

system 'clear'
greeting

name = gets.strip.downcase

todo = List.new(name)

loop do
  case menu(prompt)
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
