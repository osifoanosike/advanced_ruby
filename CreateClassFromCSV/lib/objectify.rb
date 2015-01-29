require 'csv'
class Objectify

  def initialize(file_name)
    file_name = file_name.gsub('.csv', '')
    file_path = File.expand_path("../#{file_name}.csv", __FILE__)

    if !File.exist?(file_path)
      raise "You specified a file that doesn't exist:\n #{file_path}"
    else
      @file_path  = file_path # "/home/osifo/dev/trainings/advancedruby/CreateClassFromCSV/lib/person.csv"
      first_char = file_name[0]
      @class_name = file_name.gsub(first_char, first_char.upcase)
      Object.const_set(@class_name, Class.new) #creates class from string

      set_file_content
    end   
  end


  def set_file_content
    #implements Memoization
    @file_content ||= get_content
  end


  def create_classes_and_functions      
    create_functions(create_objects(@class_name, @file_content), @file_content[0])
  end


  def get_content
    content =[]

    begin
      CSV.foreach(@file_path) do |row|
        content << row
      end
    rescue Exception => e
      puts "Something went wrong. We couldn't read from CSV file: #{e.message}\n#{e.backtrace.inspect}"
    else
      content
    end
  end


  def create_functions(objects, headers)  
    object_count = 0

    objects.each do  |class_object| 
      headers.each do |method_name|
        class_object.class.class_eval("def #{method_name}; end")
      end
      puts "\n#{class_object.class} #{object_count}"
      puts class_object.class.instance_methods(false).sort.inspect
      object_count += 1
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