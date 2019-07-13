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

  test "frequency met twice" do
    assert frequency_met_twice([
             "+1\n",
             "+2\n",
             "-1\n"
           ]) == 3
  end
end
