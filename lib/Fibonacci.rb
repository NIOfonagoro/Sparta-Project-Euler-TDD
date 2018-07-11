class FibonacciEven

  attr_accessor :fibon_array

  def initialise
    @fibon_array = [1, 2] #For Fibonacci numbers with 2 initial numbers
  end

  # Create an array with all Fibonacci numbers
  def fibonacci_array(max_num)
    while @fibon_array[-1] < max_num do
      new_num = @fibon_array[-2] + @fibon_array[-1]
      @fibon_array.push new_num
    end
    # Deletes last element if loop's new element exceeds max_num
    if @fibon_array[-1] > max_num
      @fibon_array.delete_at(-1)
    end
    @fibon_array
  end

  # Creates array with only even Fibonacci numbers
  def even_fibonacci_array
    @even_array = []
    @fibon_array.each do |i|
       if i % 2 == 0
         @even_array.push i
       else
       end
     end
    @even_array
  end

  # Add even Fibonacci numbers
  def sum_even
    sum = 0
    @even_array.each do |i|
      sum += i
    end
    sum
  end

end
