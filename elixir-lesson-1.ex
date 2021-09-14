# This is path to youtube course https://www.youtube.com/watch?v=R8CeZazrDHo&list=PLJbE2Yu2zumAgKjSPyFtvYjP5LqgzafQq
# if I want to run this code I need to go to the command line and
# type `iex elixir-lesson-1.ex`
#
# How to run this defmodule ? Good question
# a = spawn(fn -> Rectangle.area_loop() end) we'll see PID
# and then we can also use this function
#
# send a, {:area, 35, 2}
# send a, {:pmeter, 50, 5}
defmodule Rectangle do
  def area_loop do
    receive do
      {:area, w, h} ->
      IO.puts("Area = #{w*h}")
      area_loop()
      {:pmeter, w, h} ->
      IO.puts("pmeter = #{w*h}")
      area_loop()
    end
  end
end
