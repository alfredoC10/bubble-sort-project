# >>> Bubble Sort
def bubble_sort(the_array)
  count = the_array.length - 1

  return 'Incorrect array' unless the_array.all? Numeric
  
  count.times do
    (0..count).each do |i|
      if (the_array[i].to_f > the_array[i + 1].to_f) && (i != count)
        the_array[i], the_array[i + 1] = the_array[i + 1], the_array[i]
      end
    end
  end

  print the_array
end

example = [3, 8.753, 8.5789, 3.1, 5.3, 19, 21.4, 2]
bubble_sort(example)

# >>> Bubble sort by
def bubble_sort_by(str_arr)
  counting = str_arr.length - 1
  iterate = str_arr.length - 2

  if str_arr.any? Numeric
    print 'Wrong array'

  else
    counting.times do 
      (0..iterate).each do |j|
        next unless yield(str_arr[j], str_arr[j + 1]).positive?

        str_arr[j], str_arr[j + 1] = str_arr[j + 1], str_arr[j]
      end
    end
  end
  print str_arr
end

a_case = ['regards!', 'regards', 'hello', 'hey', 'salute', 'hi']
bubble_sort_by(a_case) do |left, right|
  left.length - right.length
end
