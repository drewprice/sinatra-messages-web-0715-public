module Interface
  def self.prompt(string)
    print "#{string} "
    gets.chomp
  end

  def self.alert(string)
    puts string
  end

  def self.line_break
    puts
  end

  def self.parse_response(response_message)
    if response_message == 'OK'
      alert('It worked :)')
    else
      alert('Oops, something went wrong :(')
    end
  end
end
