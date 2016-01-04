class Stage3
  def display_code
    <<-CODE
puts "Hello \#{upper(name)}"
puts "Hello \#{lower(name)}"
    CODE
  end

  def code
    <<-TEST
#{Stage2.new.code}
puts "Hello \#{lower(name)}"

if lower('ASDF') == 'asdf'
  true
else
  puts "please ensure your `lower` method converts a string to all lower case."
end
    TEST
  end

  def instructions
    <<-INSTR
Well done!</br></br>
Now please implement a method called `lower` that will convert a given string to all lower case.  Do not delete the `upper` method.
    INSTR
  end

  def next_stage
    Stage4.new
  end
end
