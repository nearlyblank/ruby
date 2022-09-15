array = [4,3,78,2,0,2]
lower = 0 #placeholder variables to switch out values in the array, this avoids a new array
higher = 0
array_length = array.length #I think it may be faster if this value is stored initially, rather than checking the array length each time?
swap = false #boolean exists to track whether values in the array are being swapped or not

def sort(array,array_length,swap
  array_length.times do #maximum amount of iterations is equal to length of the array
    swap = false
    array.each_with_index do |num, i|
      if i < array_length-1
        if array[i] > array[i+1]
          lower = array[i+1]
          higher = array[i]
          array[i] = lower
          array[i+1] = higher
          swap = true
        end
      end
    end
    break if !swap #break out of the loop if there were no changes to the order of the array
  end
  p array
end

sort(array,array_length,swap)