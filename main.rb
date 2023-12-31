require 'erb'
require 'yaml'


class Kanji < Array
end

class Okuri < Array
end

def process src, dst
  template = ERB.new(File.read('view/problem.html.erb'))
  data = YAML.load(open(src, &:read))
  @sentences = data.map do |xs|
    case xs
    when Array
      if xs[0][0].length == 1
        Kanji.new(xs)
      else
        Okuri.new(xs)
      end
    else
      xs
    end
  end
  open(dst, "w") do |io|
    io.puts template.result
  end
end

srcs = Dir["data/*.yaml"]
srcs.each do |src|
  dst = "dest/" + File.basename(src, ".yaml") + ".html"
  process src, dst
  puts "create #{dst}"
end
