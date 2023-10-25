require 'json'

def write_file(data, file)
  case File.basename(file)
  when 'person.json'
    if File.exist?(file)
      File.open(file, 'a') do |f|
        f.puts(data.to_json)
      end
    else
      new_file_name = 'person.json'
      File.new(new_file_name, 'w')
      File.write(new_file_name, JSON.generate(data), mode: 'a')
    end
  when 'book.json'
    if File.exist?(file)
      File.open(file, 'a') do |f|
        f.puts(data.to_json)
      end
    else
      new_file_name = 'book.json'
      File.new(new_file_name, 'w')
      File.write(new_file_name, JSON.generate(data), mode: 'a')
    end
  when 'rental.json'
    if File.exist?(file)
      File.open(file, 'a') do |f|
        f.puts(data.to_json)
      end
    else
      new_file_name = 'rental.json'
      File.new(new_file_name, 'w')
      File.write(new_file_name, JSON.generate(data), mode: 'a')
    end
  else
    puts "Unrecognized file name: #{File.basename(file)}"
  end
end
