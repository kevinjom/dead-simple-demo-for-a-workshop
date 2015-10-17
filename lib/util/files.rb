class Files
  class << self
  def append(line)
    dest.write("#{line}\n")
    dest.flush
  end

  def hobbies
    @hobbies ||= File.read('hobbies.txt')
  end

  def resp
    @resp ||= File.read('resp.txt')
  end

  private
  def dest
    @dest ||= File.open('hobbies.txt', 'a+')
  end
  end
end
