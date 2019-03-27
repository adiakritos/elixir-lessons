defmodule MyMath do

  def sum(list) do
    sum(list, 0)
  end

  def sum([], count) do
    count
  end

  def sum([h|t], count) do
    sum(t, count + h)
  end


  def oper(list, fun) do
    oper(list, fun, 0)
  end

  def oper([], _fun, result) do
    result
  end

  def oper([h|t], fun, result) do
    oper(t, fun, fun.(h) + result)
  end

end

defmodule MyEnum do

 def rev(list) do
   rev(list, [])
 end

 def rev([], rev_list) do
   rev_list
 end

 def rev([h|t], rev_list) do
   rev(t, List.insert_at(rev_list, 0, h))
 end

end

#IO.puts MyMath.sum([1,2,3,4,5])

#IO.puts MyMath.oper([1,2,3], fn(n) -> 10 + n end)

IO.inspect MyEnum.rev([1,2,3,4])
