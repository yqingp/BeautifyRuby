require 'htmlbeautifier'

def beautify(input, output)
  dest = ""
  begin
    dest = HtmlBeautifier.beautify(input)
    dest << "\n"
  rescue
    dest = ""
  end
  output.write(dest)
end

beautify $stdin.read.force_encoding('utf-8'), $stdout
