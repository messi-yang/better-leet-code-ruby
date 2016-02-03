secret="198874584938957343434273842795781908193819028309839894833248902373498728427918"
guess="0819324798237859758493783417873987239472490384983204893284092389439483280483928"
 
def get_hint(secret, guess)
  bull = 0
  cow = 0
  a = ""
  b = ""
  for i in 0..secret.size-1
    if secret[i] == guess[i]
      bull += 1
    else
      a << secret[i]
      b << guess[i]
    end
  end
  for i in 0..a.size-1
    if b.include?(a[i])
      cow += 1
      j = 0
      while b[j] != a[i]
        j += 1
      end
      b.slice!(j)
    end
  end

  return "#{bull}A#{cow}B"
end


=begin
Use two for loop to solve the problem.
First we initiate bull, cow, a and b. Check the character one by one.
If bull is not reached, push character of secret and guess into a and b respectively.
If reached, bull++.
Second we run another loop to check cow, using include? method to check if any 
character match with each other.If reached, cow++ and remove character from b.
=end 

#test case
=begin
secret="198874584938957343434273842795781908193819028309839894833248902373498728427918"
guess="0819324798237859758493783417873987239472490384983204893284092389439483280483928"
=end      
    
    
    
