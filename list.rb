class List
  def initialize(name)
    @name = name
    @file_path = "./lists/#{name}.txt"
  end

  def view
    puts "View #{@name}'s to-do list:"

    if File.exist?(@file_path)
      File.open(@file_path, 'r') do |file|
        file.each_line do |line|
          puts "#{file.lineno}. #{line}"
        end
      end
    else
      puts "Your file is empty."
      file = File.new(@file_path, 'w')
      file.close
    end # if exist
  end

  def add
    puts  "Add a task to the list"
  end

  def remove
    puts "Remove a task from the list"
  end
end