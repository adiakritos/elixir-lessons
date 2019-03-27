defmodule MixerzTest do
  use ExUnit.Case
  doctest Mixerz

  test "greets the world" do
    assert Mixerz.hello() == :world
  end
end
