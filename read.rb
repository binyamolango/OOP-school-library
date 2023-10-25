def read_file(file)
  return [] if !File.exist?(file) || File.size?(file).nil?

  file_data = File.read(file)
  return JSON.parse(file_data)
end
