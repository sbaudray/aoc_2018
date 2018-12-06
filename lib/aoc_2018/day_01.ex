defmodule Aoc2018.Day01 do
  def frequency_from_file(path) do
    File.stream!(path) |> compute_frequency()
  end

  def compute_frequency(file_stream) do
    file_stream
    |> Enum.reduce(0, fn line, acc ->
      {number, _leftover} = Integer.parse(line)
      acc + number
    end)
  end
end
