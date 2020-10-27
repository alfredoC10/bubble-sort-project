def bubble_sort(the_array)
  count = the_array.length - 1
  if the_array.all? Numeric
    count.times do 
      for i in 0..count
        if (the_array[i].to_f > the_array[i + 1].to_f) && (i != count)
          the_array[i], the_array[i + 1] = the_array[i + 1], the_array[i]
        end
      end 
    end
  else
    return "Incorrect array"
  end
  return the_array
end 
example = [3, 8.753, 8.5789, 3.1, 5.3, 19, 21.4, 2]
print bubble_sort(example)
