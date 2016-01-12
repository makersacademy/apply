module Stages
  class Stage5
    def stage_number
      5
    end

    def display_code
      <<-CODE
#{Stage4.new.display_code.strip}
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
<p>Keep going!</p>
<p>Now please implement a method called `random_case` that will return a lower or upper case version of a string (passed in as an argument) at random. Try to re-use code that you've written already. Do not delete the previous methods.</p>
      INSTR
    end

    def next_stage
      Stage6.new
    end
  end
end
