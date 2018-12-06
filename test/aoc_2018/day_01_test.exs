defmodule Aoc2018.Day01Test do
  use ExUnit.Case, async: true

  import Aoc2018.Day01

  test "frequency" do
    {:ok, device} =
      StringIO.open("""
      +1
      +2
      -1
      """)

    assert compute_frequency(IO.stream(device, :line)) == 2
  end
end
