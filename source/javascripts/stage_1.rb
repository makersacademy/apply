class Stage1
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
Please make this code run correctly by assigning a string value (use your own name) to the variable `name`
    INSTR
  end

  def next_stage
    Stage2.new
  end
end
