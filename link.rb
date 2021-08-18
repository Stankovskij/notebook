class Link < Post
  def initialize
    super
    @url = ''
  end

  def read_from_console
    puts "Write link"
    @url = STDIN.gets

    puts "Write description of this link"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")}"
    return [@url, @text, time_string]
  end

end

