require 'json'

def read_file(file)
  return {} if !File.exist?(file) || File.empty?(file)

  file_data = File.read(file)
  JSON.parse(file_data)
end
