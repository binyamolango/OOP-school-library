require 'json'
def write_file(data, file)
  File.new(file, 'w') unless File.exist?(file)
  File.write(file, JSON.generate(data), mode: 'a')
end
