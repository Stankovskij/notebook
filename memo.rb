class Memo < Post

  def read_from_console
    puts "New note (everything will be in until you write \"end\")"
    line = nil
    @text = []
    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end
    @text.pop
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")}"
    return @text.unshift(time_string)
  end
end