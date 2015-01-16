require 'csv'
class Objectify
	attr_accessor :file_path, :file_content

  def initialize
    @file_path  = "/home/osifo/dev/trainings/advancedruby/CreateClassFromCSV/lib/persons.csv"
    set_file_content
  end

	def set_file_content
		#implements Memoization
		@file_content ||= get_content unless defined? @file_content
	end

	def create_classes		
		
		file_name = File.basename(file_path, ".csv").chomp("s")
		first_char = file_name[0]
		class_name = file_name.gsub(first_char, first_char.upcase)
		Object.const_set(class_name, Class.new) #creates class from string
		
		create_functions(create_objects(class_name, @file_content), @file_content[0])

	end

	def get_content
		content =[]
		begin
			CSV.foreach(@file_path) do |row|
				content << row
			end
		rescue Exception => e
			puts "Something went wrong. We couldn't read from CSV file: #{e.message}"
		else
			content
		end
	end

	def display_values
		content = CSV.read(@file_path)
	end

	def create_functions(objects, headers)	
		count = 0
		objects.each do  |class_object| 
			headers.each do |method_name|
				class_object.class.class_eval("def #{method_name}; end")
			end
			puts "\n#{class_object.class} #{count}"
			puts class_object.class.instance_methods(false).sort.inspect
			count += 1
		end
	end

	def create_objects(class_name, file_rows)
		object_array = []

		file_rows.each do
			object_array << Object.const_get(class_name).new
		end
		object_array
	end
end