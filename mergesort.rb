def mergesort(array)
  return array if array <= 1
  array2 = array.slice!((array.size/2).round, array.size)
  left_array = mergesort(array)
  right_array = mergesort(array2)
  merge(left_sarray, right_array)
end

def merge(left, right)
  results = []
  until left.empty? || right.empty?
    if left.first <= right.first
      results << left.shift
    else
      results << right.shift
    end
  end
  results + left + right
end

