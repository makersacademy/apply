module Stages
  class Stage1
    def stage_number
      1
    end

    def display_code
      <<-CODE
puts "Hello \#{name}"
      CODE
    end

    def code
      <<-TEST
puts "Hello \#{name}"
if name =~ /[a-zA-Z]+/
  true
else
  puts "please ensure you assign your name to the variable `name`"
end
      TEST
    end

    def instructions
      <<-INSTR
<p>Please make the code above run correctly, by assigning a string value (use your own name) to a variable `name` in the window on the right.</p>
      INSTR
    end

    def next_stage
      Stage2.new
    end
  end
end
