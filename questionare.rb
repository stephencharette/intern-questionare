require 'json'

puts "INTERN QUESTIONARE"
print "Please enter your name for documentation purposes, the following information will not be sold
or distributed."

name = gets.chomp
print "Question #1: If you had a job before this internship, what was it and did you enjoy your time there? "
one = gets.chomp
print "Question #2: What is a hobby that you enjoy? "
two = gets.chomp
print "Question #3: Do you follow any sports teams, or if not, have you played any sports in the past? "
three = gets.chomp
print "Question #4: What college are you attending and when is your expected graduation year? "
four = gets.chomp
print "Question #5: Do you know any hidden gem dinning places that you really enjoy? "
five = gets.chomp
print "Question #6: Have you ever been hiking before and if so where/which trail did you go hiking on? "
six = gets.chomp
print "Question #7:  "
seven = gets.chomp 
print "Question #8: If you were able to work completely remote, where would you live? "
eight = gets.chomp
print "Question #9: "
nine = gets.chomp
print "Question #10: What is your opinion on pickles? "
ten = gets.chomp

data_hash = {
    "answers": {
        "name": name,
        "1": one,
        "2": two,
        "3": three,
        "4": four,
        "5": five,
        "6": six,
        "7": seven,
        "8": eight,
        "9": nine,
        "10": ten
    }
}

array = JSON.parse(File.read('./sample-data.json'))

data_hash.each do |hash|
    array << hash
end

File.open('./sample-data.json', 'w') do |f|
  f.write(JSON.pretty_generate(array))
end

puts "Thank you for filling out the INTERN QUESTIONAIRE."