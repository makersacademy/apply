class Stage4
  def display_code
    <<-CODE
puts "Hello \#{upper(name)}"
puts "Hello \#{lower(name)}"
puts "Hello \#{random_name}"
    CODE
  end

  def code
    <<-TEST
#{Stage3.new.code}
puts "Hello \#{random_name}"

result = 1.upto(100).inject([]) do |memo, number|
  memo << random_name
end

if result.count('Nikesh') > 0 and result.count(name) > 0
  true
else
  puts 'please ensure your `random_name` returns your name or "Nikesh" randomly.'
end
    TEST
  end

  def instructions
    <<-INSTR
Well done!</br></br>
Now please implement a method called `random_name` that will output either the string "Nikesh" or the value of `name` at random.  Do not delete the previous methods.
    INSTR
  end

  def next_stage
    Stage5.new
  end
end
