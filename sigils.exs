defmodule MySigils do

  def sigil_u(content, _opts) do
    content
    |> String.split
    |> Enum.map(&String.upcase/1)
  end

end

defmodule FooModule do
  import MySigils
  import Kernel, except: [sigil_r: 2]

  def sigil_r(content, opts) do
    "how you doin"
  end

  def cool do
    ~u[this is really cool bro]
  end

  def use_override do
    ~r/goaway/
  end

end

res = FooModule.use_override()
IO.inspect(res)
