defmodule TodoSupervisorsTest do
  use ExUnit.Case
  doctest TodoSupervisors

  test "greets the world" do
    assert TodoSupervisors.hello() == :world
  end
end
