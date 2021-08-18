class Post

  def self.post_types
    [Link,Memo,Task]
  end

  def self.create(type_index)
    return post_types[type_index].new
  end

  def initialize
    @text = []
    @created_at = Time.now
  end

  def read_from_console
  end

  def to_strings
  end

  def save
    file = File.new(file_path, 'w:UTF-8')

    to_strings.each do |string|
      file.puts(string)
    end
    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")
    current_path + "/" + file_name
  end

end