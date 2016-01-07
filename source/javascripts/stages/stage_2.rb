module Stages
  class Stage2
    def stage_number
      2
    end

    def display_code
      <<-CODE
#{Stage1.new.display_code.strip}
puts "Hello \#{upper(name)}"
      CODE
    end

    def code
      <<-TEST
#{Stage1.new.code}
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
<p>Well done!</p>
<p>Now please make the code above work by implementing a method called `upper` that will return a given string converted to all capitals</p>
      INSTR
    end

    def next_stage
      Stage3.new
    end
  end
end
