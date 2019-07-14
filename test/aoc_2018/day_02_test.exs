defmodule Aoc2018.Day02Test do
  use ExUnit.Case, async: true

  import Aoc2018.Day02

  test "checksum" do
    {:ok, device} =
      StringIO.open("""
      aabcd
      aaabcd
      aaabbcd
      aabbcd
      """)

    assert checksum(IO.stream(device, :line)) == 6
  end
end
