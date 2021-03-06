class SortedArray
  attr_accessor :internal_arr # This is for convenience in the tests.

  def initialize(input_arr=[])
    @internal_arr = []
    input_arr.each{|elem| @internal_arr.push(elem)}

    unless input_arr.empty? == true
      input_arr.replace(input_arr.sort)
      

    end
    

    # Fill in the rest of the initialize method here.
    # What should you do with each element of the incoming array?
  end

  def add(new_elem)
    # Hint: Use the Array#insert method.
    #@internal_arr.insert(first_larger_index(new_elem), 0, @internal_arr.size)
    #raise NotImplementedError.new("You need to implement the add method!")
  end

  def size
    @internal_arr.size
  end

  def [](index)
    return internal_arr[index]
    #raise NotImplementedError.new("You need to implement the [] method!")
  end

  def first_larger_index(target, start_ind=0, end_ind=@internal_arr.size)
    #test: 'gives 0 for an empty array'; passes because if it is an empty array,
    #size==0, which is equal to the default start_ind, and it will return 0. 
    if start_ind >= end_ind  
      return 0 
    end
    #test: "can pick before or after a single element; since the array passed as the argument
    #is only one element, size will be 1 and 1 - 0 ==1.  since that will be true...
    #if the target value is less than the value found at index0, return that value's index,
    #otherwise return the last element'd index.
     mid_index = (start_ind + end_ind) / 2  
    if (end_ind-start_ind) == 1

      if target < @internal_arr[start_ind] 
        return start_ind
      else 
        return end_ind
      end
   end
    #test:
   

    if target < @internal_arr[mid_index]
      return first_larger_index(target, start_ind, mid_index)

     elsif target >= @internal_arr[mid_index]
      return first_larger_index(target, mid_index, end_ind)  

    end  

    # raise NotImplementedError.new("You need to implement the first_larger_index method!")
  end

  def index(target)
    raise NotImplementedError.new("You need to implement the index method!")
  end
end
