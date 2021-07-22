#review_file = file.open("reviews.txt")
#lines = review_file.readlines
#review_file.close

lines=[] 
file.open("reviews.txt") do |review_file|
    lines = review_file.readlines
end
relevant_lines = lines.find_all { |line| line.include?("Truncated")}

puts relevant_lines
