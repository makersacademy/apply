module Stages
  class Stage6
    def stage_number
      6
    end

    def display_code
      <<-CODE
#{Stage5.new.display_code.strip}
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
  puts "please ensure your `random_both` method returns either upper case or lower case of either of the two names randomly."
end
      TEST
    end

    def instructions
      <<-INSTR
<p>Great, you're almost finished!</p>
<p>Now please implement a method called `random_both` that will return a lower or upper case version of one of the two names used previously, at random.  Do not delete the previous methods but think about how you can use what you've done already.</p>
      INSTR
    end

    def next_stage
      ycbm = Element.find('#instructions')
      ycbm.html('Please click to <a href="#">book your interview</a>')
      Element.find('#run_code').hide
      nil
    end
  end
end
