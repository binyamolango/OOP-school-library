require 'json'

def write_file(data, file)
	case File.basename(file)
	when 'person.json'
		if File.exist?(file)
			File.open(file, 'w') { |f| f.puts JSON.generate(data) }
		else
			new_file_name = "person.json"
			File.open(new_file_name, 'w') { |f| f.puts JSON.generate(data) }
		end
	when 'book.json'
		if File.exist?(file)
			File.open(file, 'w') { |f| f.puts JSON.generate(data) }
		else
			new_file_name = "book.json"
			File.new(new_file_name, 'w') { |f| f.puts JSON.generate(data) }
		end
	when 'rental.json'
		if File.exist?(file)
			File.open(file, 'w') { |f| f.puts JSON.generate(data) }
		else
			new_file_name = "rental.json"
			File.new(new_file_name, 'w') { |f| f.puts JSON.generate(data) }
		end
	else
		puts "Unrecognized file name: #{File.basename(file)}"
	end
end
