require 'json'
def read_file(file)
  return {} if !File.exist?(file) || File.empty?(file)

  file_data = File.read(file)
  file_data.split("\n").map { |line| JSON.parse(line) }
end
