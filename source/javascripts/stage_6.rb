class Stage6
  def display_code
    <<-CODE
puts "Hello \#{upper(name)}"
puts "Hello \#{lower(name)}"
puts "Hello \#{random_name}"
puts "Hello \#{random_case(name)}"
puts "Hello \#{random_both}"
    CODE
  end

  def code
    <<-TEST
#{Stage5.new.code}
puts "Hello \#{random_both}"

result = 1.upto(100).inject([]) do |memo, number|
  memo << random_both
end

if (result.count('NIKESH') > 0) and (result.count('nikesh') > 0) and (result.count(name.upcase) > 0) and (result.count(name.downcase) > 0)
  true
else
  puts "please ensure your `random_both` returns either upper case or lower case, and each of the two names randomly."
end
    TEST
  end

  def instructions
    <<-INSTR
Well done!</br></br>
Now please implement a method called `random_both` that will return a lower or upper case version of the two names at random.  Do not delete the previous methods.
    INSTR
  end

  def next_stage
    ycbm = Element.find('#youcanbookme')
    ycbm.css('display', 'block')
    nil
  end
end
