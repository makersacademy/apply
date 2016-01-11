require 'opal-parser'

Document.ready? do
  $stdout.write_proc = $stderr.write_proc = proc do |str|
    Apply.instance.print_to_output(str)
  end
  Apply.instance
end