def sluggish(array)
biggest = ""
array.each do |str|
  array.drop(1).each do |str2|
        if str > str2
          biggest = str
        else
        biggest = str2
      end
    end
  end
biggest
end

puts sluggish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

def fastest(array)
  return [array] if array.length < 2
  pivot = array.last
  left , right  = [] , []
  array[0..-2].each do |el|
    if el.length < pivot.length
      right << el
    else
    left << el
  end
  end

  fastest(right) + [pivot] + fastest(left)

end

def dominant(array)
fastest(array).last
end
 puts dominant(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
