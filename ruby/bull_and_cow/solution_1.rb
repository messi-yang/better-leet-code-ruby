secret="1988"
guess="0819"
 
bull = 0
cow = 0
a = []
for i in 0..secret.length-1
  if secret[i] == guess[i]
    bull += 1
    secret.slice!(i)
    secret = secret.insert(i,"*")
    a.push(i)
  end
end
for i in 0..secret.length-1
  if secret.include?(guess[i]) and !(a.include?(i))
    cow += 1
    j = 0
    while guess[i] != secret[j]
      j += 1
    end
    secret.slice!(j)
    secret = secret.insert(j,"*")
  end
end

puts "#{bull}A#{cow}B"

=begin
First we initiate bull, cow and a, a is  for index of bull position.
Second we check the bull first, if condition qualified,
we remove the character out and insert a "*" to avoid comparison again.
After bull check finished, we go ahead on cow check,
nearly the same as bull check.
=end 

    
# secret="1807" guess="0810"   ans:1A2B
# secret="1007" guess="0810"   ans:0A3B
      
    
    
    
