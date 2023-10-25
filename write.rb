require 'json'

def write_file(data, file)
  if File.exist?(file)
    file_data = File.read(file)
    json_array = JSON.parse(file_data)

    if json_array.is_a?(Array)
      json_array << data
    else
      json_array = [json_array, data]
    end

    File.open(file, 'w') { |f| f.puts JSON.generate(json_array) }
  else
    File.open(file, 'w') { |f| f.puts JSON.generate([data]) }
  end
end
