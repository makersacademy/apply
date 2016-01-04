class Stage2
  def display_code
    <<-CODE
puts "Hello \#{upper(name)}"
    CODE
  end

  def code
    <<-TEST
puts "Hello \#{upper(name)}"
if upper('asdf') == 'ASDF'
  true
else
  puts "please ensure your `upper` method converts a string to all upper case."
end
    TEST
  end

  def instructions
    <<-INSTR
Well done!</br></br>
Now please implement a method called upper that will return a given string in all capitals
    INSTR
  end

  def next_stage
    Stage3.new
  end
end
