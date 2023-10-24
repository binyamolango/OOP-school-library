require 'json'
def write_file(data, file)
  if File.exist?(file)
    File.open(file, 'w') { |file| file.puts JSON.generate(data) }
  else
    File.new(file, 'w')
  end
end
