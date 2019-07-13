defmodule Aoc2018.Day01 do
  def compute_frequency(input) do
    Enum.reduce(input, 0, fn line, acc ->
      acc + line_to_integer(line)
    end)
  end

  def frequency_met_twice(input) do
    Stream.cycle(input)
    |> Enum.reduce_while({0, MapSet.new([0])}, fn line, {current_frequency, seen_frequencies} ->
      new_frequency = current_frequency + line_to_integer(line)

      if new_frequency in seen_frequencies do
        {:halt, new_frequency}
      else
        {:cont, {new_frequency, MapSet.put(seen_frequencies, new_frequency)}}
      end
    end)
  end

  def line_to_integer(line) do
    {integer, _leftover} = Integer.parse(line)
    integer
  end
end
