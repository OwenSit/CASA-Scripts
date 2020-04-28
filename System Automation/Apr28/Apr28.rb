#the codes used in this file may be refer to
#Google and Coursera's IT Automation of System Administration course
#for more information, please visit www.coursea.org/
#file created by Songwen Xue

#string indexing
str = "String beans are tasty!"

puts str[0,6] #print 6 string characters starting at index 0 
puts str[1,10] #print 10 string characters starting at index 1

str[0,6] = "Green" #change the fist 6 characters into "Green"
str[0,6] = "" #delete part of the string by using empty string

puts str[-1] #retrive individual character, -1 means counting from the last character 

puts str[7..10] #print string characters within a range
puts str[-6..-1]

#string Substitition 
puts str.index("even") #look for the index position for the word "even"
new_str = str.sub("beans", "apples") #substitute beans with apples

str = "it was the best of times, it was the worst of times."
new_str = str.gsub("times", "bananas") #change every "times"s into "bananas"s 

puts str.include?("special") #check if a sub-string is included

#more string method
puts "moday".capitalize
puts "MONDAY".downcase
puts "monday".reverse

#regular expression
puts /Ruby/ =~ "Thw word Ruby is contained in this text" #return the starting index that meathcs "Ruby"
put /R?by/ =~ "welcome to Ruby" #return the starting index of pattern that matches the "R?by"
put /^x/ =~ "Xylem" #print the index of the leading x
puts /z$/ =~ "quiz" #print the index of the ending z
