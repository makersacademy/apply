module Stages
  class Stage3
    def stage_number
      3
    end

    def display_code
      <<-CODE
#{Stage2.new.display_code.strip}
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
<p>Excellent work!</p>
<p>Now please implement a method called `lower` that will convert a given string to all lower case.  Do not delete the previous `upper` method.</p>
      INSTR
    end

    def next_stage
      Stage4.new
    end
  end
end
