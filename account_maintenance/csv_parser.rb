#csv_parser.rb

require 'csv'

class Pivotal_csv_parser

	@@story_array = CSV.read("/home/stephan/Desktop/another_csv_file.csv")

	attr_accessor :id, :story, :labels, :story_type, :description

	def initialize(row)
	 	@id						= @@story_array[row][0]
	 	@story 				= @@story_array[row][1]
	 	@labels				= @@story_array[row][2].split(",")
	 	@story_type		= @@story_array[row][6]
	 	@description	= @@story_array[row][13]
	end

	def print_to_file
		File.open("#{@id}.feature", 'a') {|f| f.write("#{@description}") }
	end

end

titles = Pivotal_csv_parser.new(0)
# puts titles.id
# puts titles.story
# puts titles.labels
# puts titles.story_type
# puts titles.description

story1 = Pivotal_csv_parser.new(1)
story1.print_to_file
puts "#{titles.id}: #{story1.id}"
puts story1.id.class
id_num  = story1.id.to_i
puts id_num
puts id_num.class
puts "#{titles.story}: #{story1.story}"
puts "#{titles.labels}: #{story1.labels}"
individual_labels = story1.labels
puts individual_labels[0]
puts individual_labels[1].strip
puts "#{titles.story_type}: #{story1.story_type}"
puts "#{titles.description}: #{story1.description}"

template_text =  "# #{titles.id}: #{story1.id}
# #{titles.story}: #{story1.story}\n
@#{individual_labels[0]} @#{individual_labels[1].strip}
Feature: #{story1.story}
As a user
I want to
In order to\n
\tScenario: scenario name
\tGiven I have something
\tWhen I do something
\tThen something happens
\n\n"

File.open("kyle_file.feature", 'a') {|f| f.write("#{template_text}") }


# CSV.foreach("/home/stephan/Desktop/csv_file.csv") do |row|
#   # use row here...
# end

# arr_of_arrs = CSV.read("/home/stephan/Desktop/csv_file.csv")


# puts "\nPivotal Story CSV File Parser\n"

# id = 							"#{arr_of_arrs[0][0]}: #{arr_of_arrs[1][0]}"
# puts "#{id}"

# story =						"#{arr_of_arrs[0][1]}: #{arr_of_arrs[1][1]}"
# puts "#{story}"

# labels =					"#{arr_of_arrs[0][2]}: #{arr_of_arrs[1][2]}"
# puts "#{labels}"

# iteration =				"#{arr_of_arrs[0][3]}: #{arr_of_arrs[1][3]}"
# puts "#{iteration}"

# iteration_start =	"#{arr_of_arrs[0][5]}: #{arr_of_arrs[1][5]}"
# puts "#{iteration_start}"

# story_type =			"#{arr_of_arrs[0][6]}: #{arr_of_arrs[1][6]}"
# puts "#{story_type}"

# estimate =				"#{arr_of_arrs[0][7]}: #{arr_of_arrs[1][7]}"
# puts "#{estimate}"

# current_state =		"#{arr_of_arrs[0][8]}: #{arr_of_arrs[1][8]}"
# puts "#{current_state}"

# created_at =			"#{arr_of_arrs[0][9]}: #{arr_of_arrs[1][9]}"
# puts "#{created_at}"

# accepted_at =			"#{arr_of_arrs[0][10]}: #{arr_of_arrs[1][10]}"
# puts "#{accepted_at}"

# deadline =				"#{arr_of_arrs[0][11]}: #{arr_of_arrs[1][11]}"
# puts "#{deadline}"

# requested_at =		"#{arr_of_arrs[0][12]}: #{arr_of_arrs[1][12]}"
# puts "#{requested_at}"

# description =			"#{arr_of_arrs[0][13]}: #{arr_of_arrs[1][13]}"
# puts "#{description}"