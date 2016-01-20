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
<p>Please make the code above run correctly, by assigning a string value (use your own name) to a variable `name` in the window on the right. Remember that the testing framework we use is based on you using Ruby to answer the questions. Take your time to play in `IRB` to play around with the code and test possible theories. Any errors in your code will appear below in the results screen. </p>
      INSTR
    end

    def next_stage
      Stage2.new
    end
  end
end
