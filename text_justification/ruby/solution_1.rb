# @param {String[]} words
# @param {Integer} max_width
# @return {String[]}
def full_justify(words, max_width)
  return nil if words.nil?
  return [""] if max_width==0
  index,output=0,[]

  while index<words.size do
    nums,length = get_nums_and_len(words,index,max_width)

    num_of_space,space_counts,next_word=nums-1,max_width-length,''

    if index+nums==words.length
      (index..(index+nums-1)).each do |j|
        next_word << "#{words[j]} "
      end
      (max_width-next_word.length).times{ next_word << " " }
      return output << next_word[0,max_width]
    end

    (index..(index+nums-1)).each do |j|
      next_word << words[j]
      if nums==1
        (max_width-next_word.length).times{ next_word << " " }
        break
      end      
      if next_word.length<max_width && num_of_space!=0
        (space_counts/num_of_space).times{ next_word << " " }
        next_word << " " if j-index<space_counts%num_of_space
      end
    end
    output << next_word
    index+=nums
  end
  output
end

def get_nums_and_len(words,index,max_width)
  nums,length=0,0
  while length<max_width do
    length+=words[index+nums].length
    nums+=1
    if words[index+nums].nil? || length+words[index+nums].length+nums-1>=max_width
      if length+nums-1>max_width
        length-=words[index+nums-1].length
        nums-=1
      end
      break
    end
  end
  return nums,length
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
