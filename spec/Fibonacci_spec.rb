require 'spec_helper'

describe FibonacciEven do

  before(:all) do
    @Fib = FibonacciEven.new
    @max = 4000000
  end

  # Checks initial Fibonacci numbers values are always correct
  it 'should have the first two Fibonacci numbers as 1 and 2' do
    expect(@Fib.initialise[0]).to eq 1
    expect(@Fib.initialise[1]).to eq 2
    expect(@Fib.fibon_array[0]).to eq 1
    expect(@Fib.fibon_array[1]).to eq 2
  end

  # Check Fibonacci numbers are the sum of previous 2
  it 'should have a Fibonacci be the sum of the last 2 Fibonacci numbers' do
    @Fib.fibonacci_array(@max)
    p @Fib.fibon_array
    expect(@Fib.fibon_array[5]).to eq(@Fib.fibon_array[4] + @Fib.fibon_array[3])
  end

  # Check if the highest Fibonacci number is no more than 4 million
  it 'should have the highest Fibonacci number no more than 4 million' do
    p @Fib.fibon_array[-1]
    expect(@Fib.fibon_array[-1]).to be <= @max
  end

  # Check if the even_array only has even numbers
  it 'should have even array to only have even numbers' do
    p @Fib.even_fibonacci_array
    expect(@Fib.even_fibonacci_array[5]).to satisfy {|i| i % 2 == 0}
  end

  # Check if the sum of even Fibonacci numbers is right
  it 'should have the sum of even fibonacci as the correct sum'do
    p @Fib.sum_even
    expect(@Fib.sum_even).to eq 4613732
  end

end
