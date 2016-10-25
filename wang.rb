class NumberWang
  def array_decompress(array)
    @highest_int = array.max
    @lowest_int = array.min
    @sorted_array = array.sort
    @array_count = array.count
    @total_negatives = total_negatives(array)
  end

  def total_negatives(array)
    negs = array.select{|n| n < 0}
    negs.count
  end

  def array_multiplier
    if @total_negatives >= 2
      if @total_negatives == @array_count
        return @highest_int * @sorted_array[(@array_count -2)] * @sorted_array[(@array_count -3)]
      end
      @lowest_int * @sorted_array[1] * @highest_int
    else
      @highest_int * @sorted_array[(@array_count - 2)] * @sorted_array[(@array_count - 3)]
    end
  end

  def highest_total(array)
    array_decompress(array)
    array_multiplier
  end
end
