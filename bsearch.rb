require 'rubygems'
require 'pry-debugger'
module ArrayUtil
  def self.bsearch(array, element)
    # If the array is empty return a result
    # Otherwise call your helper _bsearch method
    if array == []
      return false
    else
      self._bsearch(array,element,0,(array.length-1))
    end

  end

  def self._bsearch(array, element, start_index, end_index)
    # If the start and end indeces are the same, search
    # that element and return
    #
    # Otherwise, find the midpoint
    #   midpoint = start_index + (end_index - start_index) / 2
    #
    # If the element is greater than the one at midpoint, call
    #   _bsearch on the right half of the remaining array
    # Otherwise, call _bsearch on left half of the remaining array
    mid_point = (start_index+end_index) / 2

    return false if start_index > end_index
    if element == array[mid_point]
      return true
    elsif element < array[mid_point]
      end_index = mid_point - 1
      self._bsearch(array,element,start_index, end_index)
    else
      start_index = mid_point + 1
      self._bsearch(array,element,start_index, end_index)
    end

  end
end
