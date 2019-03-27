defmodule MyStream do

  def months do
    ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'] |> Enum.filter(&Regex.run(~r/Apr/, &1)) |> Enum.each(&IO.puts/1)
  end

  def read do
    File.stream!("sample.txt", [:read], :line)
    |> Stream.filter(&String.starts_with?(&1, "d"))
    |> Stream.take_every(2)
    |> Stream.map(&String.trim/1)
    |> Enum.into([])
  end

end

results = MyStream.read

IO.inspect(results)
