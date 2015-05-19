# Fork this repository to your personal account and
# clone that fork to your machine.
# 
# Answer each of the questions below, adding comments
# beneath them as appropriate.

# 1. Read this file. What do you expect it to do when
#    you run it?
# This should count how many A's and Z's there rae in the fox.txt file.
# 2. Now run it. Are there any bugs?
# The file ran without any errors, but it did not actually put out the results.
# 3. Can you make any improvements to the program?
# 4. How many Q's are there in "prufrock.txt"?
# 6 Q's are in prufrock.txt.
# 5. (Harder) What are the 5 most common letters in "prufrock.txt"?
# e, a, t, o, i

# When you're done (at least with 4), commit your work,
# push it to your repo, and open a pull request.

require 'pry'

text = File.read("prufrock.txt").downcase

cs = Hash.new
text.chars.each do |l|
  if cs[l]
    cs[l] += 1
  else
    cs[l] = 1
  end
end
binding.pry
ac = cs["a"]
zc = cs["z"]
qc = cs["q"]

#puts "Text is: #{text}"
puts "There are #{ac} A's and #{zc} Z's and #{qc} Q's"