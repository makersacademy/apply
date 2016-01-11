module Stages
  class Stage4
    def stage_number
      4
    end

    def display_code
      <<-CODE
#{Stage3.new.display_code.strip}
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
  puts "please ensure your `random_name` method returns either '\#{name}' or 'Nikesh' randomly."
end
      TEST
    end

    def instructions
      <<-INSTR
<p>That's great!</p>
<p>Now please implement a method called `random_name` that will output either the string "Nikesh" or your name.  Do not delete the previous methods.</p>
      INSTR
    end

    def next_stage
      Stage5.new
    end
  end
end
