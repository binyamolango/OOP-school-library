def read_file(file)
  return [] if !File.exist?(file) || File.empty?(file)

  file_data = File.read(file)
  json_array = JSON.parse(file_data)

  if json_array.is_a?(Array)
    json_array
  else
    [json_array]
  end
end
