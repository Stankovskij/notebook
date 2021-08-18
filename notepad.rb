require_relative 'post'
require_relative 'link'
require_relative 'memo'
require_relative 'task'

puts "What you want to write in notepad?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |index,type|
    puts "#{index}. #{type}"
  end
  choice = STDIN.gets.chomp.to_i
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts "Note was successfully saved"

