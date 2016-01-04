class Stage5
  def display_code
    <<-CODE
puts "Hello \#{upper(name)}"
puts "Hello \#{lower(name)}"
puts "Hello \#{random_name}"
puts "Hello \#{random_case(name)}"
    CODE
  end

  def code
    <<-TEST
#{Stage4.new.code}
puts "Hello \#{random_case(name)}"

result = 1.upto(100).inject([]) do |memo, number|
  memo << random_case('John')
end

if result.count('JOHN') > 0 and result.count('john') > 0
  true
else
  puts "please ensure your `random_case` method returns either upper case or lower case randomly."
end
    TEST
  end

  def instructions
    <<-INSTR
Well done!</br></br>
Now please implement a method called `random_case` that will return a lower or upper case version of a string at random.  Do not delete the previous methods.
    INSTR
  end

  def next_stage
    Stage6.new
  end
end
