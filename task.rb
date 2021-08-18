require 'date'

class Task < Post
  def initialize
    super
    @due_time = Time.now
  end

  def read_from_console
    puts "Write your task"
    @text = STDIN.gets.chomp

    puts "Due what time? (example: 12.05.2022)"
    input = STDIN.gets.chomp

    @due_time = Date.parse(input)
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")}"

    deadline = "Due to: #{@due_time}"

    return [time_string, @text, deadline]
  end
end