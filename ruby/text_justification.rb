# @param {String[]} words
# @param {Integer} max_width
# @return {String[]}
def full_justify(words, max_width)
  if words.nil?
    return nil
  elsif max_width==0
    return [""]
  end

  index=0
  output=[]
  
  while index<words.size do
    i=0
    length=0
    while length<max_width do
      if words[index+i].nil? || length+words[index+i].length+i-1>=max_width
        if length+i-1>max_width
          length-=words[index+i-1].length
          i-=1
        end
        break
      end
      length+=words[index+i].length
      i+=1
    end
    
    num_of_space,space_counts=i-1,max_width-length
    next_word=''
    
    if(index+i)==words.length
      (index..(index+i-1)).each do |j|
        if index!=j
          next_word << " " << words[j]
        else
          next_word << words[j]
        end
      end
      (max_width-next_word.length).times{
        next_word << " "
      }
      return output << next_word
    end

    (index..(index+i-1)).each do |j|
      next_word << words[j]
      if i==1
        (max_width-next_word.length).times{
          next_word << " "
        }
        break
      end
      if next_word.length<max_width && num_of_space!=0
        (space_counts/num_of_space).times{
          next_word << " "
        }
        if (j-index)<(space_counts%num_of_space)
          next_word << " "
        end
      end
    end
    output << next_word
    index+=i
  end
  return output
end

#design
=begin
For first , I will check how many words I'm gonna push to next word of the output.
I will add some of words to next_word till it exceeds the max_width(spaces are also reserved).
Then to count how many spaces I should insert.
Next step is to check it is the last word or not. If yes , just left-justify and return output.
If it's not the last word , then insert the words , while arranging the spaces evenly to each word.
=end

#test case
=begin
a=["This", "is", "an", "example", "of", "text", "justification.","dddd","okdesu"]
b=["What","must","be","shall","be."]
c=["Listen","to","many,","speak","to","a","few."]
d=["a"]
e=["Here","is","an","example","of","text","justification."]
f=["Imagination","is","more","important","than","knowledge."]
puts full_justify(a,16).to_s
puts full_justify(b,12).to_s
puts full_justify(c,6).to_s
puts full_justify(d,1).to_s
puts full_justify(e,14).to_s
puts full_justify(f,14).to_s
=end
