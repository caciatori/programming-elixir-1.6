fizz_buzz = fn
  {0, 0, _} -> IO.puts "FizzBuzz"
  {0, _, _} -> IO.puts "Fizz"
  {_, 0, _} -> IO.puts "Buzz"
  {_, _, c} -> IO.puts c
end

fizz_buzz_result = fn(a) -> fizz_buzz.({ rem(a, 3), rem(a, 5), a }) end

fizz_buzz_result.(10)
fizz_buzz_result.(11)
fizz_buzz_result.(12)
fizz_buzz_result.(13)
fizz_buzz_result.(14)
fizz_buzz_result.(15)
fizz_buzz_result.(16)